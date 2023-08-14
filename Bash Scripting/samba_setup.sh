#!/bin/bash

# Prompt for Samba share details
read -p "Enter the name of the Samba share (e.g my-samba-share): " SHARE_NAME
read -p "Enter the path of the shared directory: " SHARE_PATH
read -p "Enter valid users (comma-separated): " VALID_USERS
read -p "Enter read list username to provide read permission (comma-separated): " READ_LIST
read -p "Enter write list username to provide write permision(comma-separated): " WRITE_LIST
read -p "Enter a comment for the share: " COMMENT

# Install Samba
echo "Installing Samba..."
apt update
apt install samba -y

# Function to prompt for Samba user password
prompt_for_user_password() {
    while true; do
        read -sp "Enter the password for $1: " USER_PASSWORD
        echo
        read -sp "Confirm the password for $1: " USER_PASSWORD_CONFIRM
        echo
        if [ "$USER_PASSWORD" == "$USER_PASSWORD_CONFIRM" ]; then
            break
        else
            echo "Passwords do not match. Please try again."
        fi
    done
}

# Create the shared directory and set permissions
echo "Creating the shared directory..."
mkdir -p "$SHARE_PATH"
chmod 777 "$SHARE_PATH"

# Create Samba user accounts
echo "Creating Samba user accounts..."
for user in $(echo "$VALID_USERS" | tr ',' ' '); do
    useradd "$user" -s /sbin/nologin
    prompt_for_user_password "$user"
    echo -e "$USER_PASSWORD\n$USER_PASSWORD" | sudo smbpasswd -s -a "$user"
done

# Backup the original smb.conf file
echo "Backing up smb.conf to smb.conf.bak..."
# cp /etc/samba/smb.conf /etc/samba/smb.conf.bak

# Create a new configuration snippet
CONFIG_SNIPPET="[${SHARE_NAME}]
   path = /$SHARE_PATH
   public = no
   valid users = $VALID_USERS
   read list = $READ_LIST
   write list = $WRITE_LIST
   browseable = yes
   comment = \"$COMMENT\""

# Write the configuration snippet to a temporary file
echo -e "\n$CONFIG_SNIPPET" | sudo tee -a /etc/samba/smb.conf > /dev/null

testparm

# Replace the existing smb.conf with the new configuration
#sudo mv /etc/samba/smb.conf.new /etc/samba/smb.conf

# Restart Samba services
echo "Restarting Samba services..."
systemctl restart smbd nmbd

if [ $? -eq 0 ]; then
    echo "Samba share setup completed successfully!"
else
    echo "An error occurred during the setup process."
fi

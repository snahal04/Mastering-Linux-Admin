[Video Tutorial](https://www.youtube.com/watch?v=g_y5AvZblEs)
# Samba File Share Setup

This repository contains a bash script that automates the setup of a Samba file share on a Linux system. The script prompts the user for input regarding the share details, user accounts, and permissions, and then sets up the Samba share accordingly.

## Prerequisites

- A Linux system (tested on Ubuntu 20.04 LTS)
- Sudo access

## Usage

1. Clone this repository to your local machine:

# Server Setup

* Make the script executable: `chmod +x setup_samba.sh`
* run the script `./samba_setup.sh` as sudo


Follow the prompts to provide the necessary information for the Samba share setup.

The script will install Samba, create the shared directory, set permissions, create Samba user accounts, update the smb.conf file, and restart the Samba services.

If the setup completes without errors, you'll see the message: "Samba share setup completed successfully!"

# Configuration
You will be prompted for the following details during the setup:

1. Samba share name (e.g., my-samba-share)
2. Path of the shared directory
3. Valid users (comma-separated)
4. Read list usernames for read permission (comma-separated)
5. Write list usernames for write permission (comma-separated)
6. A comment for the share


Important Notes
The script will request your user password and the passwords for the Samba users you're creating.
Make sure to review the script and customize any variables or settings as needed before running it.


The testparm command is used to check the syntax of the smb.conf file.


# Client Setup 
1. Open the file manager and navigate toward other locations
2. Connect to server : smb://server_ip
3. To get server ip user command ifconfig | grep inet


Thanks!

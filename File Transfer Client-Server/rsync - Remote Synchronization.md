* A lot faster the SCP and FTP and has a default port 22
* Mostly used to backup file
* We can pull the files from server and also push the files to server

# Install rsync on local machine (Source)
`sudo apt install rsync`

# Create a backup zip file
`cd Desktop\` to create a zip file for Destop

* tar cvf backup.tar .`

tar (options) (filename.tar) (source address) here `.` represent current directory

# Copy a file in a different directory in same machine
* `rsync -zvh backup.tar /tmp/backups`

# Copy a file in a different directory in different machine
* `rsync -avz backup.tar username@192.168.1.14:home/username/Downloads`

# Pull a file from Server machine (destination) 

* `rsync -avzh username@192.168.1.14:/home/username/fileToCopy.txt /home/snahal/Desktop`

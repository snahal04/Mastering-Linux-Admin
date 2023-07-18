
# Remote Server (Destination)
## Install and Configure FTP Service
* `sudo apt install vsftpd`
* `sudo vi /etc/vsftpd.conf` Beofre vi you should create a copy of this file first

Find the following lines and make changes to find > Press ESC > `/name` > Enter
* .anonymus_enable=NO

Uncomment these lines
* ascii_upload_enable=YES
* ascii_download_enable=YES
* write_enable=YES
* uncomment Welcome to blah FTP service

Add a command in the last line 
* use_localtime=YES

Exit to vi editor ESC > " Shift + ZZ " or ":wq!"

* systemctl start vsftpd
* systemctl enable vsftpd
* systemctl stop firewalld

# Client Server (Source)

Install FTP Client `sudo apt install ftp` and create a sample file to transfer `touch snahal.txt`

# Command to transfer files to FTP server (Source)

* `ftp 192.168.1.12` Enter the username and password of the server machine(destination)

To find the uname and Ip address of the server 

* Type `whoami` to know username and `ifconfig | grep inet` to know ip-address

![Image](https://github.com/snahal04/Site-Reliability-Engineer/assets/77937488/322485d0-9809-4468-84cc-742ad18b031d)

* enter `bin` and then `hash` to start the transfer in binary 
* `put snahal.txt` It will transfer the files to the server

Now you have successfully transferred a file using FTP with default port 22



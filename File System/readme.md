# Directory Structure

* `/boot` is used by the boot loader executable files needed to start a Linux computer.
* `/root` It is the top-level filesystem directory. It is not same as `/` PWD
* `/dev` It includes the device file for all hardware devices connected to the system (eg. disk, cdrom, flashdrive)
* `/etc` Configuration File
* `/bin` or `/usr/bin` includes user executable files every day user commands
* `/opt` Optional ass-on application
* `/proc` Running Processes
* `/lib` or `/usr/lib` C programming library needed for applications.
* `/tmp` Temporary files
* `/home` Directory for user
* `/var` System logs
* `/run` Store temporary runtime file
* `/mnt` To mount external file system
* `/media` For cdrom mounts
* `/var` Here variable data files are saved. It can contain things such as MySQL, log files, other database files, email inboxes, web server data files, and much more.

**Absolute path** starts at root directory `/` (e.g. `cat /home/Downloads/name1.txt` , `cd /var/` , `cd /usr/lib/` , ... ) but **Relative path** doesn't start with `/` path related to the (pwd) (e.g. `cat file.txt`)

# Creating files and directories

* `touch file1.txt file2.txt file3.cpp` Creating multiple files at a time.
* `vi file1.txt` Creating a new file and editing it. To exit the editor `esc` then `shift+z+z` or `:wq!` With saving file `:q` Without saving file.
* `cp oldfile.txt newfile.txt` Copy to new file automatically creats new file if not exist



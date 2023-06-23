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
* `mkdir files` create a directory at pwd

# Removing files and directories

* Use tab to complete the name after writing first 3-4 char.
* `rmdir` Is used to remove the directories if they are **EMPTY** `rmdir file/` else `rmdir -p` if it contain sub directories.
* `rm` Remove the files `rm file.txt` but will not work to remove the directory so in case you want then use `rm -r` where r=recursive.
* `rm -f` It will remove the files and never prompt
* `rm -i` It will remove the file and prompt.
* My preference to del a directory is `rm -fr` if you don't want prompt else use `rm -ir` If the directory may contain some imp files

# Copy/Move files or directories

* `cp -fr` To copy the directory or file and overwrite or replace if files/directories are already present.
* Syntax is cp source destination same for move `mv sourcefile/dir destinationdir`
* `mv -ir` prompt before moving or `mv -fr` no prompt r is for recursive to help directory to move/copy.
* Check help `mv --h` for more detail

# Types of file

* `file filename` It shows the type of file.

| File Symbol   |   Meaning     |
| ------------- | ------------- |
|       -       | Regular File  |
|       d       | Directory  |
|       l       | Link  |
|       c       | Special File  |
|       s       | Socket  |
|       p       | Named Pipe  |
|       b       | Block Device  |

# Find files and directories

* `find Desktop/ -name "sysadmin.txt"` Helps you to find any file with filename if it is available. `find . -name "filename"` `.` represent pwd.

# Changing password of the user

* `passwd username` Only root can change password

# Wildcards

* `*` Represent zero or more characters
* `?` Represent a single character
* `[]` Represent a range of characters

For example, let's create some files `touch abc1.txt abc2.txt abc3hh.txt` so in order to remove all those file starting with abc in a single command `rm abc*` To create 10 files in one line `touch abc{1..9}.txt` to check the result do `ls -ltr ? abc*` in your system. to remove files `rm abc{1..9}*`.

# Bonus 

* `man ls` or `man rm` or `man <inbuilt command>` you can check the manual to know in the deep of any command use space to view more and q to quit
* `ls --help` or `rm --help` to check help which gives short details of a particular command you want.

You can cover the theory topic such as Linux system file types from <a href="https://www.geeksforgeeks.org/linux-file-system/" target="_blank">Linux system file GFG Article</a>

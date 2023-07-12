# File Permissions

* `rwx` r = read, w = write, x = execute
* user, group, other `rwx rwx rwx`
* TO change permission we use `chmod` command

`-rw-rw-r--` here first `-` represent the file type if it is `drw-rw-rwx` here d represent a directory.
* `chmod g-w snahal.txt` here it means `-` for remove `+` for add, `g` represent group. So remove write permission of group from snahal.txt.
* `chmod ugo + r snahal.txt` or `chmod 444 snahal.txt` this means give read permission to ugo user group and other to the file.

Table of numeric representation of permission.

| 0 | No permission   | ---  |
| - | --------------- | ---- |
| 1 |  Execute        | --x  |
| 2 |  Write       | -w-  |
| 3 |  Execute + Write       | -wx  |
| 4 |  Read        | r--  |
| 5 |  Read + Execute        | r-x  |
| 6 |  Read + Write       | rw-  |
| 7 |  Read + Write + Execute        | rwx  |

## File Ownership
* `chown` Change ownership of a file or directory
* `chgrp` Change Group of a file or directory

# Access Control List

What is ACL : Use to give or restrict permission to any user who is not a member of the group created by you. Used by DNS, Web servers to secure core files from attackers.
<br>
1. To add permission to user `setfacl -m u:user:rwx /path/to/file` where `-m` means modify and user = username.
2. To add permission for a group `setfacl -m g:groupname:rw /path/to/file` .
3. To allow all files or directories to inherit ACL entries `setfacl -m "entry" /path/to/file` .
4. To remove all entry `setfacl -b path/to/file` .

`getfacl filename` it will show you all the permission, username, groupname details.
<br>
<br>
![image](https://github.com/snahal04/Site-Reliability-Engineer/assets/77937488/86886b6a-9dc5-4509-8f77-6feda0802e0a)

# Help Command

* `whatis <commandName>`
* `<commandName> --help`
* `man <commandName`

# Adding Text to File

* vi
* echo
* vim
* nano

echo will echo back what you have typed `echo hello world > new1.txt` `>` it will update the line 1 and `>>` it will append the text in new line.
* `wc -c filename` It will give the count of characters in a file.

# Filters / Text Processing Commands


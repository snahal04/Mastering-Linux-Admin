# File Permissions

* `rwx` r = read, w = write, x = execute
* user, group, other `rwx rwx rwx`
* TO change permission we use `chmod` command

`-rw-rw-r--` here first `-` represent the file type if it is `drw-rw-rwx` here d represent a directory.
* `chmod g-w snahal.txt` here it means `-` for remove `+` for add, `g` represent group. So remove write permission of group from snahal.txt.
* `chmod ugo + r snahal.txt` or `chmod 444 snahal.txt` this means give read permission to ugo user group and other to the file.

Table of numeric representation of permission.


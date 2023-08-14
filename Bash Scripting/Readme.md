# Samba File Share Setup

This repository contains a bash script that automates the setup of a Samba file share on a Linux system. The script prompts the user for input regarding the share details, user accounts, and permissions, and then sets up the Samba share accordingly.

## Prerequisites

- A Linux system (tested on Ubuntu 20.04 LTS)
- Sudo access

## Usage

1. Clone this repository to your local machine:

# Server Setup
run the script `./samba_setup.sh` as sudo

# Client Setup 
1. Open the file manager and navigate toward other locations
2. Connect to server : smb://server_ip
3. To get server ip user command ifconfig | grep inet

Thanks!

* Ad-hoc commands run on as needed basis and usually for those tasks that do not repeat
* Syntax for Ad-Hoc ansible command:
* ansible [target] –m [module] –a “[module options]”
# Example ansible ad-hoc commands:
* Ping localhost
  `ansible localhost –m ping`
* Creating a file on all remote clients
`ansible all –m file –a “path=/home/snahal/adhoc1 state=touch mode=700”`
* Deleting a file on all remote clients
`ansible all –m file –a “path=/home/snahal/adhoc1 state=absent”`
* Copying a file to remote clients
`ansible all –m copy –a “src=/tmp/adhoc2 dest=/home/snahal/adhoc2”`


# Ad-hoc commands part 1

* Installing package (telnet and httpd-manual)
`ansible all –m yum –a “name=telnet state=present”`
`ansible all –m yum –a “name=httpd-manual state=present”`
* Starting httpd package service
`ansible all –m service –a “name=httpd state=started”`
* Start httpd and enable at boot time
`ansible all –m service –a “name=httpd state=started enabled=yes”`
* Checking httpd service status on remote client
`ansible all –m shell -a “systemctl status httpd”`
* Remove httpd package
`ansible all –m yum –a “name=httpd state=absent`
OR
`ansible all –m shell -a “yum remove httpd”`

# Ad-hoc commands part 2

* Creating a user on remote clients
` ansible all –m user –a “name=jsmith home=/home/jsmith shell=/bin/bash state=present”`
* To add a user to a different group
`ansible all –m user –a “name=jsmith group=snahal”`
* Deleting a user on remote clients
`ansible all –m user –a “name=jsmith home=/home/jsmith shell=/bin/bash state=absent”`
OR
`ansible all –m shell –a “userdel jsmith”`
* Getting system information from remote clients
`ansible all –m setup`
* You can run commands on the remote host without a shell module e.g. reboot client1
`ansible client1 –a “/sbin/reboot`

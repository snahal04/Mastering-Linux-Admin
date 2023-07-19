# Installing Appache

* `sudo apt update`
* `sudo apt install apache2`

# Creating Your own webserver 

![Website](https://github.com/snahal04/Site-Reliability-Engineer/assets/77937488/cf758c12-1fa1-426c-b837-3445e7177fb4)
<br>
Create a directory with any name let say "newWeb" and create a new "index.html" file 
* `cd /var/www`
* `sudo mkdir newWeb`
* `sudo touch ./newWeb/index.html`
* `sudo touch ./newWeb/styles.css` <br>

Now add the above HTML and CSS sample code to their respective files using any text editor `sudo nano ./newWeb/index.html` and same for css

* `cd /etc/apache2/sites-available`

copy the content of 000-default.conf to a new file newWeb.conf

* `sudo cp 000-default.conf newWeb.conf`
<br>Now edit the file using `sudo nano newWeb.conf` and add/update the following lines

* ServerAdmin yourname@gmail.com
* DocumentRoot /var/www/newWeb/
* ServerName snahal.com <br>
Ctrl + x exit and y save and Enter

* `sudo a2ensite newWeb.conf`  After setting up our website, we need to activate the virtual hosts configuration file to enable it. We do that by running the command in the configuration file directory:
* `systemctl reload apache2` Reload the apache2 server

* `cd /etc` `sudo nano hosts` and add the following line <br>
![/etc/hosts file ](https://github.com/snahal04/Site-Reliability-Engineer/assets/77937488/0e606d94-cb57-4fe7-b013-1d4b26da9cb8)
<br>

Now open your web-browser and enter your machine Ip address `ifconfig | grep inet` or enter the name snahal.com 🌟

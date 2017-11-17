#!/bin/bash

# Pre install Odoo 10

useradd -m -g sudo -s /bin/bash odoo  # Create an 'odoo' user with sudo powers
passwd odoo  # Ask and set a password for the new user

sudo apt-get -y install git # Install Git
sudo apt-get -y install npm #Install NodeJs and its package manager
sudo ln -s /usr/bin/nodejs/usr/bin/node # call node runs nodejs
sudo npm install -g less less-plugin-clean-css #Install less compiler

# wkhtmltopdf: Verify if it's needed for Odoo 10.0

# wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb

sudo ./odoo10-base-install.sh
sudo ./odoo10-extras.sh
sudo ./odoo10-config.sh

#!/bin/bash

sudo mkdir ~/odoo-dev # Create a directory to work in
cd ~/odoo-dev # Go into odoo-dev

# Create Odoo 10 in ~/odoo-dev/odoo
git clone https://github.com/odoo/odoo.git --depth 1 --branch 10.0 --single-branch
./odoo/setup/setup_dev.py setup_deps # Installs Odoo system dependencies
./odoo/setup/setup_dev.py setup_pg # Installs PostgreSQL & db superuser for unix

# Run Odoo to test installation in 127.0.0.1:8010 
~/odoo-dev/odoo/odoo-bin --xmlrpc-port=8010

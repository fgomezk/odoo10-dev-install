#!/bin/bash

## Repos to install in /home/odoo/odoo-dev/extras:
mkdir /home/odoo/odoo-dev/extras
cd /home/odoo/odoo-dev/extras

## Odoo database backup:
# git clone https://github.com/NetSur/daily-database-copy.git --depth 1 --branch 10.0 --single-branch

## ---------------------
## Spanish accounting:
## ---------------------

## Install some deps
sudo apt-get -y install python-unidecode python-evdev python-pip
sudo pip install --pre pyusb
sudo pip install --upgrade pip

## Main module Localización española (l10n_es)
## -------------------------------------------
git clone https://github.com/OCA/l10n-spain.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./l10n-spain/requirements.txt

## Direct REPO OCA dependencies of l10-spain
git clone https://github.com/OCA/partner-contact.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./partner-contact/requirements.txt
git clone https://github.com/OCA/account-financial-tools.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./account-financial-tools/requirements.txt
git clone https://github.com/OCA/reporting-engine.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./reporting-engine/requirements.txt
git clone https://github.com/OCA/bank-statement-import.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./bank-statement-import/requirements.txt
git clone https://github.com/OCA/pos.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./pos/requirements.txt
git clone https://github.com/OCA/bank-payment.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./bank-payment/requirements.txt
git clone https://github.com/OCA/account-payment.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./account-payment/requirements.txt
git clone https://github.com/OCA/community-data-files.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./community-data-files/requirements.txt
git clone https://github.com/OCA/account-financial-reporting.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./account-financial-reporting/requirements.txt
git clone https://github.com/OCA/queue.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./queue/requirements.txt
git clone https://github.com/OCA/account-closing.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./account-closing/requirements.txt

##  OCA Post-Dependencies of previous l10n_spain
git clone https://github.com/OCA/connector.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./connector/requirements.txt
git clone https://github.com/OCA/server-tools.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./server-tools/requirements.txt
git clone https://github.com/OCA/web.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./web/requirements.txt
git clone https://github.com/OCA/stock-logistics-workflow.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./stock-logistics-workflow/requirements.txt
git clone https://github.com/OCA/product-attribute.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./product-attribute/requirements.txt

## OCA Post - Post - Dependencies of previous l10n_spain
git clone https://github.com/OCA/stock-logistics-warehouse.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./stock-logistics-warehouse/requirements.txt
git clone https://github.com/OCA/webkit-tools.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./webkit-tools/requirements.txt

## ----------------------
## OCA interesting REPOS. First line is the REPO and the next lines are REPO dependencies:
## ----------------------

## Website
git clone https://github.com/OCA/website.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./website/requirements.txt
git clone https://github.com/OCA/account-analytic.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./account-analytic/requirements.txt

## Sale-workflow
git clone https://github.com/OCA/sale-workflow.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./sale-workflow/requirements.txt
git clone https://github.com/OCA/stock-logistics-transport.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./stock-logistics-transport/requirements.txt
git clone https://github.com/OCA/account-invoicing.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./account-invoicing/requirements.txt
git clone https://github.com/OCA/manufacture.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./manufacture/requirements.txt

## Purchase-workflow
git clone https://github.com/OCA/purchase-workflow.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./purchase-workflow/requirements.txt

## CRM
git clone https://github.com/OCA/crm.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./crm/requirements.txt

## HR (Human Resources)
git clone https://github.com/OCA/hr.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./hr/requirements.txt
git clone https://github.com/OCA/hr-timesheet.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./hr-timesheet/requirements.txt

## Social
git clone https://github.com/OCA/social.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./social/requirements.txt

## Knowledge
git clone https://github.com/OCA/knowledge.git --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./knowledge/requirements.txt

## Multicompany
git clone https://github.com/OCA/multi-company.git  --depth 1 --branch 10.0 --single-branch
sudo pip install -r ./multi-company/requirements.txt

## Product-variant
git clone https://github.com/OCA/product-variant.git --depth 1 --branch 10.0 --single-branch

## account-invoice-reporting
git clone https://github.com/OCA/account-invoice-reporting.git --depth 1 --branch 10.0 --single-branch

## TEST, some dependencies are not complied

## e-commerce ("bank-statement-reconcile" of oca_dependencies.txt doesn't exist)
# git clone https://github.com/OCA/e-commerce.git --depth 1 --branch 10.0 --single-branch

## Project
# git clone https://github.com/OCA/project.git --depth 1 --branch 10.0 --single-branch
# "project-service" of "oca_dependencies.txt" doesn't exist
# git clone https://github.com/OCA/project-reporting.git --depth 1 --branch 10.0 --single-branch


## Stock-logistics
# git clone https://github.com/OCA/stock-logistics-tracking.git --depth 1 --branch 10.0 --single-branch
# git clone https://github.com/OCA/stock-logistics-barcode.git --depth 1 --branch 10.0 --single-branch

## ---------------------
## INTERESTING VERTICALS
## ---------------------

## Telephony
# git clone https://github.com/OCA/connector-telephony.git --depth 1 --branch 10.0 --single-branch

## Hotel
# git clone https://github.com/OCA/vertical-hotel.git  --depth 1 --branch 10.0 --single-branch

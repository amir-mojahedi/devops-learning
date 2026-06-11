#!/bin/bash

##################################################
############## Installing packages ###############
##################################################

sudo yum install wget httpd unzip -y
echo

##################################################
##############  Starting services  ###############
##################################################

sudo systemctl start httpd
echo

##################################################
############ Creating temp directory##############
##################################################

sudo mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo


##################################################
######### Starting artifact deployment ###########
##################################################

wget https://www.tooplate.com/zip-templates/2160_exhibit_studio.zip
uzip 2160_exhibit_studio.zip
sudo cp -r 2160_exhibit_studio/* /var/www/html/
echo


##################################################
################ Restart service  ################
##################################################

sudo systemctl restart httpd
echo

##################################################
######### Starting artifact deployment ###########
##################################################

rm -rf /tmp/webfiles
echo
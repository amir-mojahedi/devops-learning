#!/bin/bash

##################################################
############## Assigning variables ###############
##################################################

PACKAGES = "httpd unzip wget"
TEMPDIR = "/tmp/webfiles"
ZIPFILE_NAME = 2160_exhibit_studio
SCV = httpd
URL = "https://www.tooplate.com/zip-templates/$ZIPFILE_NAME.zip"


##################################################
############## Installing packages ###############
##################################################

sudo yum install $PACKAGES -y
echo

##################################################
##############  Starting services  ###############
##################################################

sudo systemctl start $SVC
echo

##################################################
############ Creating temp directory##############
##################################################

sudo mkdir -p $TEMPDIR
cd $TEMPDIR
echo


##################################################
######### Starting artifact deployment ###########
##################################################

wget $URL
uzip $ZIPFILE_NAME.zip
sudo cp -r $ZIPFILE_NAME/* /var/www/html/
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
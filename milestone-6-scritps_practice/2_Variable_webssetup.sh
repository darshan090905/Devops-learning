#!/bin/bash

#Vairable declearation
PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip"
ART_NAME="2129_crispy_kitchen"
TEMP_DIR="/tmp/webfiles"
DOC_ROOT="/var/www/html"

#Installing dependencies
echo "#########################################################"
echo "Installing packages"
echo "#########################################################"
sudo yum install $PACKAGE -y > /dev/null

# Creating necessary directories
echo "#########################################################"
echo "Creating Document Root directory"
echo "#########################################################"
sudo mkdir -p $DOC_ROOT
echo

#Creating temporary directory for deployment
echo "#########################################################"
echo "Starting Articraft deployment"
echo "#########################################################"
mkdir -p $TEMP_DIR
cd $TEMP_DIR

#Download and deploy web files
wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* $DOC_ROOT
echo

#Clean up
echo "#########################################################"
echo "Removing temporary files"
echo "#########################################################"
rm -rf $TEMP_DIR
echo

#Starting and enabling services
echo "#########################################################"
echo "Staring and Enabling httpd services"
echo "#########################################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

#Display content and status for verification
echo "#########################################################"
echo "Verification"
echo "#########################################################"
sudo systemctl status $SVC --no-pager
echo
ls $DOC_ROOT
echo
ip addr show


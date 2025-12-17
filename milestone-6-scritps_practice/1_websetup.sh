#!/bin/bash

#Installing dependencies
echo "#########################################################"
echo "Installing packages"
echo "#########################################################"
sudo yum install wget unzip httpd -y
echo

#Starting services
echo "#########################################################"
echo "Staring and Enabling httpd services"
echo "#########################################################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo

#Creating temporary directory
echo "#########################################################"
echo "Starting Articraft deployment"
echo "#########################################################"
mkdir -p  /tmp/webfiles
cd /tmp/webfiles

#Download and deploy web files
wget https://templatemo.com/tm-zip-files-2020/templatemo_520_highway.zip
unzip templatemo_520_highway.zip > /dev/null
cp -r templatemo_520_highway/* /var/www/html
echo

#Clean up
echo "#########################################################"
echo "Removing temporary files"
echo "#########################################################"
rm -rf /tmp/webfiles
echo

#Bonous service
echo "#########################################################"
echo "Restarting httpd services"
echo "#########################################################"
sudo systemctl restart httpd
echo

#Display content
sudo systemctl status httpd
echo
ls /var/www/html
echo
ip addr show


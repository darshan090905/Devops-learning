#!/bin/bash

echo "###############################################################"
date

#ls /var/run/httpd/httpd.pid &> /dev/null

if [ -f /var/run/httpd/httpd.pid ]
then
        echo "HTTPD Service is Running."
else
        echo "HTTPD Service is not Running."
        echo "Starting HTTPD Service...."
        sudo systemctl start httpd
        if [ $? -eq 0 ]
        then
                echo "Process Started Suceesfully"
        else
                echo "Process Staring Failed..."
        fi
fi
echo "###############################################################"
echo


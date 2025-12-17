#!/bin/bash

#Vairable declearation
#PACKAGE="httpd wget unzip"
#SVC="httpd"
URL="https://templatemo.com/tm-zip-files-2020/templatemo_592_glossy_touch.zip"
ART_NAME="templatemo_592_glossy_touch"
TEMP_DIR="/tmp/webfiles"
DOC_ROOT="/var/www/html"

yum --help &> /dev/null

if [ $? -eq 0 ]
then
        #Set variable for centos
        PACKAGE="httpd wget unzip"
        SVC="httpd"

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
else
        #Set variable for Ubuntu
        PACKAGE="apache2 wget unzip"
        SVC="apache2"

        #Installing dependencies
        echo "#########################################################"
        echo "Installing packages"
        echo "#########################################################"
        sudo apt update
        sudo apt install $PACKAGE -y > /dev/null

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
fi


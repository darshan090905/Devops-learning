#!/bin/bash

echo "Welcome $USER on $HOSTNAME."
echo "###################################################"

FREE_RAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOT_FREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')


echo "###################################################"
echo "Available Free RAM is: $FREE_RAM"
echo "###################################################"
echo "Current Load Average is: $LOAD"
echo "###################################################"
echo "Root partion time size is: $ROOT_FREE"
echo "###################################################"
echo "Thank you................"



#!/bin/bash

VALUE=$(ip addr show | grep -v lo | grep -ic mtu )

if [ $VALUE -eq 1 ]
then
        echo "1 Active Network Interface found"
        echo
elif [ $VALUE -gt 1 ]
then
        echo "Multiple Network Interfaces found"
        echo
else
        echo "NO Active Network INterfaces"
fi


#!/bin/bash

read -p "Enter Your Number:" NUM
echo

if [ $NUM -gt 100 ]
then
        echo "We have Entered IF block."
        sleep 3
        echo "$NUM Number is greater then 100."
        echo
else
        echo " $NUM Number is lesser then 100."
fi
echo



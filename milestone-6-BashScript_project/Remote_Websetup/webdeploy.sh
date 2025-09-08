#!/bin/bash
USR="devops"
#multios_websetup.sh
for host in `cat remhosts`
do
        echo
        echo "###############################################"
        echo "Connecting to host $host..............."
        echo "###############################################"
        echo

        echo "###############################################"
        echo "Pushing script to $host........."
        echo "###############################################"
        scp multios_websetup.sh $USR@$host:/tmp/
        echo

        echo "###############################################"
        echo "Executing script on $host"
        echo "###############################################"
        ssh $USR@$host sudo /tmp/multios_websetup.sh
        ssh $USR@$host sudo rm -rf /tmp/multios_websetup.sh
        echo
        echo "###############################################"
        echo

done


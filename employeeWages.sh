#! /bin/bash -x

echo "employee wages"
        
        IS_FULL_TIME=1
        
        randomCheck=$((RANDOM % 3))
       
                if [ $IS_FULL_TIME -eq $randomCheck ]
                then

                        
                        echo employee is present
                else
                        echo employe is absent
                        

                 fi
                        


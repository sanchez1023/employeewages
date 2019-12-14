#!/bin/bash -x

  salary=0
  
	IS_FULL_TIME=2;
   wagesperhour=10
   randomCheck=$((RANDOM % 3))
   if [ $IS_FULL_TIME -eq $randomCheck ]
      then
   
         employeehours=8
         echo employee is present
      else
         echo employe is absent
         employeehours=0

   fi
         salary=$(( $wagesperhour*$employeehours))
         echo $salary


#!/bin/bash -x
IS_PART_TIME=1;
IS_FULL_TIME=2;
wagesperhour=10
numberOfWorkingDays=30
salary=0

	for ((day=1; day<=$numberOfWorkingDays; day++))
   	do
      	randomCheck=$((RANDOM % 3))
   
   		echo day:$day
  			 case $randomCheck in
                  $IS_PART_TIME)    
                     employeehours=4
                     echo employee is partime;;
                  $IS_FULL_TIME)
                     employeehours=8
                     echo employee is present;;

                  *)
                     echo employe is absent
                     employeehours=0;;
         esac

   
               salary=$(($salary + $(( $wagesperhour*$employeehours))))
               #salary+= $(($wagesperhour*$employeehours))
               echo  salary is :$salary
done 



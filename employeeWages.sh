#!/bin/bash -x
IS_PART_TIME=1;
IS_FULL_TIME=2;
wagesperhour=10
randomCheck=$((RANDOM % 3))
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


                     salary=$(( $wagesperhour*$employeehours))
                      echo $salary


#! /bin/bash -x
salary=0
IS_PART_TIME=1
IS_FULL_TIME=2
WAGES_PER_HOURS=10
NUM_WORKING_DAYS=40
MAX_HOURS_IN_MONTH=80
DAY=1
EMP_RATE_PER_HOUR=40
totalWorkHours=0
totalWorkDays=0

function  getWorkingHours(){
   case $1 in 
      $IS_FULL_TIME)
         workHours=8;;
      $IS_PART_TIME)
         workHours=4;;
      *)
         workHours=0;;
   esac
   echo $workHours
}

	calculateWages(){
		local workHours=$1
	echo $workHours	
	wage=$(($workHours * $EMP_RATE_PER_HOUR))
		echo $wage
	}
while [[ $totalWorkHours -lt $MAX_HOURS_IN_MONTH && $totalWorkDays -lt $NUM_WORKING_DAYS ]]
do
   ((totalWorkDays++))
   workHours="$( getWorkingHours $((RANDOM%3)) )"
   totalWorkHours=$(( $totalWorkHours+$workHours ))
	empDailyWages[$totalWorkDays]="$(calculateWages $workHours)"

done 
	totalSalary="$(calculateWages $workHours)"
	
	echo total salary ${empDailyWages[@]} 



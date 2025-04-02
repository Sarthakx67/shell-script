#!/bin/bash

#this script is used to automatically get the info of system

#set -x

REPORT_FILE="System_info.txt"

Sleep_Interval=3

while true;
do
	Timestamp=$(date)	
	
	echo "">>"$REPORT_FILE"
	echo "">>"$REPORT_FILE"
	echo "">>"$REPORT_FILE"


	echo "--------System Info Report ($Timestamp)--------">>"$REPORT_FILE"

	echo "">>"$REPORT_FILE"

	echo "Uptime : ">>"$REPORT_FILE"

		uptime>>"$REPORT_FILE"

	echo "">>"$REPORT_FILE"

	echo "Free Disk Space (root) : ">>"$REPORT_FILE"
		
		df -h >>"$REPORT_FILE"
	
	echo "">>"$REPORT_FILE"

	echo "Free Memory : ">>"$REPORT_FILE"

		free -m | head -2 >> "$REPORT_FILE"

	echo "">>"$REPORT_FILE"

	echo "-------System Info Report Ended ($Timestamp)--------">>"$REPORT_FILE"

	echo "">>"$REPORT_FILE"

	echo ".....Report Saved to $REPORT_FILE next check in $Sleep__interval seconds....." 

	echo "">>"$REPORT_FILE"
	echo "">>"$REPORT_FILE"
	echo "">>"$REPORT_FILE"


	sleep "$Sleep_Interval"

done


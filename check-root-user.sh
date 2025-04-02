#!/bin/bash

UserId=$(id -u)

if [[ $UserId -eq 0 ]]
then 
	echo "you are root user"
else
	echo "you are not the root user"
fi


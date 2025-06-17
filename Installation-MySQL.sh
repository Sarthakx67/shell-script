#!/bin/bash

#check if user is root user or not
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR:: Root Access is required"
    exit 1
fi

#Create a Log-File
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

#install mysql and add logs to Log-File
yum install mysql -y &>>$LOGFILE

#Colours in scripting
R="\e[31m"
G="\e[32m"
N="\e[0m"

#check for installation successful or not
if [ $? -ne 0 ]
then
    echo "Installation of mysql is $R error $N"
    exit 1
else
    echo "Installation of mysql is $G success $N"
fi



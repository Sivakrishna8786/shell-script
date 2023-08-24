#!/bin/bash

#colors
#validations
#log redirectory 

LOGFILE_DIRECTORY=/tmp/
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

DISK_USEAGE=$(df -hT | grep -vE 'tmpsf|Filesystem')
DISK_USEAGE_THRESHOLD=1

##IFS means internal field seperator in space

while IFS = read line
do 
   echo "output: $line"

done <<< $DISK_USAGE



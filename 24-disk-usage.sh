#!/bin/bash

#colors
#validations
#redirectory 

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1
message=''

##IFS= means internal field seperator in space
while IFS= read line
do 
    #this command will give you usage in number formate for comparision
    USAGE=$(echo $line | awk '{print $6}' | cut -d % -f1)
    #this command will give us partition
    partition=$(echo $line | awk '{print $1}')
    #now this command will us the threshold is more than or not
    if [ $USAGE -gt $DISK_USAGE_THRESHOLD ];
    then 
       message+="HIGH DISK Usage On $Partition: $USAGE \n"
    fi
done <<< $DISK_USAGE
    echo -e "message: $message"
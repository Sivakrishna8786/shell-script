#!/bin/bash

# Our program goal is to install Mysql
DATE=$(date +%F)
LOGSDIR=/home/centos/shellscript.logs
#/home/centos/shell-script.logs\script-name-date.logs
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then 
    echo -e "$R ERROR::please run thise script with root user $N"
    exit 1
fi

VALIDATE(){
    if [ $ 1 -ne 0 ];
    then 
         echo -e "installing $2 ... $R FAILURE $N"
         exit 1
    else
         echo -e "installing $2 ... $G SUCCESS $N"   
    fi  
}
# all args are in $@

for i in $@
do
   yum list installed $i -y &>>$LOGFILE
   VALIDATE $? "$i"
   if [ $i -ne 0 ]
   then 
        echo "if not installed, let's install it"
   else
        echo -e "$Y $i is already installed $N"
   fi
   #yum install $1 -y
done



#!/bin/bash

# Our program goal is to install Mysql

Date=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

  # this function should validate the previous command and it inform user success or failure 
 VALIDATE (){
   #$1 it will receive the input argument1
   if [ $1 -ne 0 ]
   then 
      echo -e "$2 ... $R FAILURE $N"
      exit 1
    else
       echo  "$2 ... $G SUCCESS $N"
   fi
 }
 
 if [ $USERID -ne 0 ]
 then
 echo "ERROR:please run this script with root access"
 exit 1
 # else 
 # echo "INFO: you are root user"

fi

#it is our responsibility again to check installation is success or not
   yum install mysql  -y &>>$LOGFILE

   VALIDATE $? 

   yum install postfix  -y &>>$LOGFILE

   VALIDATE $? 


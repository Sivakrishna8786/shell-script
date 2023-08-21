#!/bin/bash

# Our program goal is to install Mysql

USERID=$(id -u)

  # this function should validate the previous command and it inform user success or failure 
 VALIDATE (){
   #$1 it will receive the input argument1
   if [ $1 -ne 0 ]
   then 
      echo "$2........ FAILURE"
      exit 1
else
    echo "$2........... SUCCESS" 
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
   yum install mysql  -y

   VALIDATE $? "installing mysql"

   yum install postfix  -y

   VALIDATE $? "installing postfix"


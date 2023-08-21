#!/bin/bash

# Our program goal is to install Mysql

USERID=$(id -u)
 
 if [ $USERID -ne 0 ]
 then
 echo "ERROR:please run this script with root access"
 exit 1
 # else 
 # echo "INFO: you are root user"

fi

#it is our responsibility again to check installation is success or not
   yum install mysqlll  -y

   if [ $? -ne 0 ]
   then 
      echo "installation of mysql is error"
      exit 1

    echo "installation is mysql is success" 
fi



#!/bin/bash

# Our program goal is to install Mysql

USERID=$(id -u)
 
 if [ $USERID -ne 0 ]
 then
 echo "ERROR:: please run this script with root access"
fi

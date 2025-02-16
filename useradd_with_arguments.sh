#!/bin/bash

<<help

this is a shell script

to create users

help

echo "========== Creation of User Started =========="

read -p "enter the username:" username

read -p "enter the password:" password

sudo useradd -m "$username"


echo "$username"
echo "$password"


#echo -e "$2\n$2" | sudo passwd "$1"

#echo "========== Creation of User Completed =========="

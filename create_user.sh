#!/bin/bash
#
#
#


<<HelpText

this is a shell script to create user

HelpText

function create_user {

echo "===========Creation of User ========="

read -p "enter the user name:" username

read -p "enter the password :" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "===============complete ========="

}

function delete_user {
sudo userdel $username

cat /etc/passwd | grep $username | wc | awk '{print $1}'

echo "================Deletion of user name==============="

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

echo "count number is: $count"

if  [ "$count" = 0 ]
then 
	echo "user does not exist"
else 
	echo "user exist"
fi
}

create_user

delete_user

#echo "as wc is 0 the user is deleted"

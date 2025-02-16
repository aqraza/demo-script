#!/bin/bash
#
#


<<info

this is an explation of functions

info

function create_user {
read -p "Enter the username : " username

sudo useradd -m $username

echo "user created succesfully: "

}

create_user

create_user

create_user




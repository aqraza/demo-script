#!/bin/bash
#
# user defined variables


hero="rancho"
villan="virus"


echo "3 idiots ka hero hai $hero"

echo "3 idiots and vilan hai $villan"

# shell and environment variable (predefined variables)
#
#
#

echo " current logged in user is $USER"

# User Input
#
read -p "rancho ka pura name kya tha ? " fullname

echo "rancho ka pura nam $fullname tha"

# Arguments
# ./3_Idiots.sh Raju Farhan Rancho

echo "Movie ka name $0"

echo "First Idiot $1"

echo "Second Idiot $2"

echo "Third Idiot $3"

echo "Hence the 3 idiots are $@"

echo "total number of idiots $#"



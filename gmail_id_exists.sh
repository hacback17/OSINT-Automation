#!/bin/bash

clear

echo -n "Enter location of email id file "
read location


# if the variable (location) is empty then print the message and stop the script
if [ -z $location ]; then
    echo "You didn't enter a location."
    exit
fi 

# check if the entered location is incorrect
if [ ! -f $location ]; then
    echo "File does not exist."
    exit
fi

for i in $(cat $location); do
    echo $i
    curl -v https://mail.google.com/mail/gxlu?email=$i 2>tmp
    if [ ! $(cat tmp | grep "< set-cookie:") ]; then
        echo "The email does not exist." 
    else
        echo "The email exists"
    fi
done

# If a Gmail account exists, Curl will return a response with "set-cookie" in the results. 

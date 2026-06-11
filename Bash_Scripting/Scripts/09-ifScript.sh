#!/bin/bash

read -p "Enter your number: " NUM
echo

if [ $NUM -gt 100 ]
then
 echo "We have entered in IF block."
 sleep 3
 echo "Your number is greater than 100."
 echo
 date
else
 echo "Your number is less than 100."
fi


value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then
 echo "1 Active Network Interface found."
elif [ $value -gt 1 ]
then
 echo "Multiple  Active Network Interface found."
else
 echo "No Active Network Interface found."
fi
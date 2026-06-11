#!/bin/bash


### command substitution ###

FREE_RAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=$(uptime | awk '{print $9}')
ROOT_FREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')


echo "###################################"
echo "Available free RAM is $FREE_RAM MB"
echo "###################################"
echo "Current load Average $LOAD"
echo "###################################"
echo "Free ROOT partition size is $ROOT_FREE"
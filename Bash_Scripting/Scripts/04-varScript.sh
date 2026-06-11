#!/bin/bash

### Define Variables ###

SERVICE1="httpd"
SERVICE2="sshd"


#### Check Services ###

systemctl status $SERVICE1

sleep 2

systemctl status $SERVICE2
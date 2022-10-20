#!/bin/bash 

cat /etc/userdatadomains | while read domain; 
    do echo $domain | grep -v "==sub==" | awk -F: '{print $1}'
    done
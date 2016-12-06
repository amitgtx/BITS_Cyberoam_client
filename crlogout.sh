#!/bin/bash
echo -n "Usename : "
read u
echo
curl -s -k -d mode=193 -d username=$u https://10.1.0.10:8090/logout.xml
#echo Successfully Logged Out

#!/bin/bash
echo -n "Username : "
read u
echo -n "Password : "
read -s p
echo
curl -s -k -d mode=191 -d username=$u -d password=$p https://10.1.0.10:8090/login.xml
#echo Successfully Logged In

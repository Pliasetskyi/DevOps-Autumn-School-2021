#!/bin/bash

username=$1
direcrory=$2

#check user exist in OS
echo -n enter "username"
read username
grep $username /etc/passwd
if [ $? -eq 0 ]; then
    echo "yes the user exists"
else
    echo "No, the user does not exist"
fi

#check  user root 
if [ $UID -eq 0 ];
then
echo "$username is root"
else
echo "$username is not root"
fi

#check directory exist
[ -d "/home/stf1/task" ] && echo "Directory exists."
[ ! -d "/home/stf1/task" ] && echo "Directory DOES NOT exists."
#chenge owner of directory
chown -R "$username:$username" "$directory"

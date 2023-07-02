#!/bin/bash

# Define the GitHub repository URL
repo_url="https://github.com/cold-breazy/6STEM"
# Get the latest commit
latest_commit=$(git ls-remote $repo_url HEAD | cut -f1)

# Checks
echo "        [§] CONNECTION TEST ! "
echo
ping -c 1 google.com > /dev/null 2>&1
if [ $? -eq 0 ]; then echo "           [+] CONNECTED !"
sleep 2.0
else echo "   [×] INTERNET CONNECTION FAILED !"
sleep 2.0
echo
exit
fi

echo " SEND A LOGIN REQUEST TO THE SERVER"
sleep 1.2

echo "       Taking You To Whatsapp"
xdg-open https://wa.me/+27719739090?text=" HERE IS MY SIGNUP INFO

*TIME* >>> $(date +%r)
*USERNAME >>>* $(whoami)
*HOSTED AT? >>>* $(uname -n)
*DIR CHECK ? >>> $(pwd)*"
sleep 2.0
clear
echo " ACCESS KEY : MANDISA#123"
re="\e[0m"
red="\e[31m"
green="\e[32m"
yellow="\e[33m"                          white="\e[37m"
fav="\e[42m"
logo="\u0041"


user="$(whoami)"
host="$(uname -n)"
dir="$(pwd)"
date="$(date +%Y/%h/%d)"
nako="$(date +%r)"
clear
echo "$dir"


function ctrl_c() { 
echo -e "\n ${yellow}     CTRL + C PRESSED! EXITING...."
sleep 1.5
exit
}

trap ctrl_c SIGINT

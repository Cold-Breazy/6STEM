#!/bin/bash

# Define the GitHub repository URL
repo_url="https://github.com/cold-breazy/6STEM"
# Get the latest commit
latest_commit=$(git ls-remote $repo_url HEAD | cut -f1)

# Checks
if [[ $latest_commit != $(cat last_commit.txt) ]];
then
clear
echo "     [×] OUTDATED VERSION !!!"
sleep 2.8
echo
echo "  INSTALLING NEW UPDATE"
cd $HOME
rm -rf 6STEM
git clone https://github.com/cold-breazy/6STEM
clear
sleep 1.7
echo " INSTALLATION COMPLETE ! LAUNCHING TOOL..."
cd 6STEM
bash start.sh
echo
# Store the latest commit hash
echo $latest_commit > last_commit.txt
fi

echo "        [§] CONNECTION TEST ! "
echo
ping -c 1 google.com > /dev/null 2>&1
if [ $? -eq 0 ]; then echo "       [+] CONNECTED !"
sleep 2.0
else echo "   [×] INTERNET CONNECTION FAILED !"
sleep 2.0
echo
exit
fi

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

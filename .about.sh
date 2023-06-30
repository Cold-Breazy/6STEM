#!/bin/bash
clear
re="\e[0m"
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
white="\e[37m"
fav="\e[42m"
logo="\u0041"
clear
# echo
name="DANGER 404" role="PROGRAMMING" fb="@DANGER.404" languages="PHP BASH PYTHON"

# intrests
interest=("Computer Science" "𝖤𝗑𝗉𝗅𝗈𝗋𝗂𝗇𝗀 𝗇𝖾𝗐 𝗍𝖾𝖼𝗁𝗇𝗈𝗅𝗈𝗀𝗂𝖾𝗌" "𝖯𝗋𝗈𝗀𝗋𝖺𝗆𝗆𝗂𝗇𝗀")

# prints
echo -e "${re}---------------------------------------"
echo -e " ${red}           A B O U T   M E ${re}"
echo "---------------------------------------"
echo
sleep 0.7
echo -e "${yellow}NAME     :${red} $name"
sleep 0.7
echo -e "${yellow}ROLE     :${red} $role"
sleep 0.7
echo -e "${yellow}FACEBOOK :${red} $fb"
sleep 0.7
echo -e "${yellow}LANGUAGE :${red} $languages${re}"
sleep 0.7
echo
echo -e "          ${fav}[+ FOLLOW ME +]${re}"
echo -e " ${green}  [1] FACEBOOK     [2] WHATSAPP${re}"
echo
read -p "CHOOSE TO FOLLOW : " fol
if [ "$fol" == "1" ];
then
xdg-open https://www.facebook.com/profile.php?id=100091064756375
bash start.sh
elif [ "$fol" == "2" ];
then
xdg-open https://wa.me/+27847611848
bash start.sh
else
echo -e "    INCORRECT CHOICE !"
sleep 2.5
bash .about.sh
fi

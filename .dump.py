import requests
import os

def clear_console(): os.system('cls' if os.name == 'nt' else 'clear')
clear_console()

# Choice
print("Enter Your Access Token")
print()
opt = input("     [+] ACCESS TOKEN ? : ")
print()
print("Enter Friend ID")
print()
id = input("      [+] FRIEND ID : ")
# printer
print()
if opt == "name": pass
if id == "name": pass
# Tool Begin

# Set the access token and friend ID
access_token = opt
friend_id = '100092601517948'
print(access_token)
# Make the API request to get the friend's profile info
response = requests.get(f'https://graph.facebook.com/{friend_id}?fields=id,name,birthday,email&access_token={access_token}')

# If the request was successful, parse the response data
if response.status_code == 200:
    friend_info = response.json()
    print(f"Name: {friend_info['name']}")
    print(f"ID: {friend_info['id']}")
    print(f"Birthday: {friend_info.get('birthday', 'N/A')}")
    print(f"Email: {friend_info.get('email', 'N/A')}")
else:
    print(f"Error fetching friend info: {response.status_code} - {response.text}")

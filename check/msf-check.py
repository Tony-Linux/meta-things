#!/usr/bin/env python3
import os
# Repo Link : https://github.com/Tony-Linux/meta-things
# Define color codes
green = '\033[1;32m'
red = '\033[1;31m'
white = '\033[1;37m'
cyan = '\033[1;36m'
reset = '\033[0m'
yellow = '\033[1;33m'
magenta = '\033[1;35m'
blue = '\033[1;34m'
# Code https://github.com/mrfidal
# Function to check Metasploit installation
def check_metasploit_installation():
    os.system('clear')
    print(f'{white} [{green}++{white}] {green}Checking Metasploit Installation...')
    os.system('sleep 1')

    # Check if the "msfconsole" command is available in the system
    if os.system('command -v msfconsole &> /dev/null') == 0:
        print(f'{white} [{green}++{white}] {green}Metasploit is installed on your system.')
        os.system('sleep 1')
    else:
        print(f'{white} [{red}☠☠{white}] {red}Metasploit is not installed on your system. Please install Metasploit before continuing.')
        exit(1)

# Call the function to check Metasploit installation
check_metasploit_installation()

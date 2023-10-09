#!/bin/bash

green='\033[1;32m'
red='\033[1;31m'
white='\033[1;37m'
cyan='\033[1;36m'
reset='\033[0m'
yellow='\033[1;33m'
magenta='\033[1;35m'
blue='\033[1;34m'

check_installed() {
    command -v "$1" >/dev/null 2>&1
}

if ! check_installed "msfconsole"; then
    echo -e "${white} [${red}☠☠${white}] ${red}Warning: Metasploit is not installed on your system."
    echo -e "${white} [${red}☠☠${white}] ${red}Please install Metasploit before continuing."
fi

if ! check_installed "nmap"; then
    echo -e "${white} [${red}☠☠${white}] ${red}Warning: Nmap is not installed on your system."
    echo -e "${white} [${red}☠☠${white}] ${red}Please install Nmap before continuing."
fi

if ! check_installed "python3"; then
    echo -e "${white} [${red}☠☠${white}] ${red}Warning: Python 3 is not installed on your system."
    echo -e "${white} [${red}☠☠${white}] ${red}Please install Python 3 before continuing."
fi

if ! check_installed "ruby"; then
    echo -e "${white} [${red}☠☠${white}] ${red}Warning: Ruby is not installed on your system."
    echo -e "${white} [${red}☠☠${white}] ${red}Please install Ruby before continuing."
fi

if ! check_installed "msfconsole" || ! check_installed "nmap" || ! check_installed "python3" || ! check_installed "ruby"; then
    exit 1
fi

echo -e "${white} [${green}++${white}] ${green}All required packages are installed. You can proceed with your tasks."

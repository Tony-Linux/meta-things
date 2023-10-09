#!/usr/bin/env bash
green='\033[1;32m'
red='\033[1;31m'
white='\033[1;37m'
cyan='\033[1;36m'

bash villain/data/files/banner.sh
echo -e "${white} [${green}++${white}] ${green}Run Metasploit Command"

run_metasploit_command() {
    read -p $' \e[1;92m[\e[0m\e[1;77m++\e[0m\e[1;92m]Enter the Metasploit command : ' metasploit_command
	if [ -z $metasploit_command ]; then
		run_metasploit_command
	elif [[ $metasploit_command == "exit" ]]; then
		exit
	else
    	msfconsole -q -x "$metasploit_command"
    fi
    run_metasploit_command
}
run_metasploit_command

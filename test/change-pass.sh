#!/usr/bin/env bash
green='\033[1;32m'
red='\033[1;31m'
white='\033[1;37m'
cyan='\033[1;36m'
reset='\033[0m'
yellow='\033[1;33m'
magenta='\033[1;35m'
blue='\033[1;34m'

banner() {
        clear
        echo -e "${cyan} +${white}-------------------------------------------------${cyan}+"
        echo -e "${white} |   ${red}S ${green}  ███${red}╗ ${green}  ███${red}╗${green}███████${red}╗${green}████████${red}╗${green} █████${red}╗ ${red}  H${white}   |"
        echo -e "${white} |   ${red}Y ${green}  ████${red}╗${green} ████${red}║${green}██${red}╔════╝╚══${green}██${red}╔══╝${green}██${red}╔══${green}██${red}╗ ${red} A${white}   |"
        echo -e "${white} |   ${red}S ${green}  ██${red}╔${green}████${red}╔${green}██${red}║${green}█████${red}╗ ${green}    ██${red}║ ${green}  ███████${red}║ ${red} C${white}   |"
        echo -e "${white} |   ${red}T ${green}  ██${red}║╚${green}██${red}╔╝${green}██${red}║${green}██${red}╔══${red}╝   ${green}  ██${red}║${green}   ██${red}╔══${green}██${red}║ ${red} K${white}   |"
        echo -e "${white} |   ${red}E ${green}  ██${red}║ ╚═╝${green} ██${red}║${green}███████${red}╗ ${green}  ██${red}║ ${green}  ██${red}║${green}  ██${red}║ ${red} E${white}   |"
        echo -e "${white} |  ${red} M   ╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝${red}  D   ${white}|"
        echo -e "${white} |${green} ████████${red}╗${green}██${red}╗${green}  ██${red}╗${green}██${red}╗${green}███${red}╗  ${green} ██${red}╗${green} ██████${red}╗${green} ███████${red}╗ ${white}|"
        echo -e "${white} |${red} ╚══${green}██${red}╔══╝${green}██${red}║${green}  ██${red}║${green}██${red}║${green}████${red}╗${green}  ██${red}║${green}██${red}╔════╝${green} ██${red}╔════╝ ${white}|"
        echo -e "${white} |${green}    ██${red}║${green}   ███████${red}║${green}██${red}║${green}██${red}╔${green}██${red}╗${green} ██${red}║${green}██${red}║${green}  ███${red}╗${green}███████${red}╗ ${white}|"
        echo -e "${white} |${green}    ██${red}║ ${green}  ██${red}╔══${green}██${red}║${green}██${red}║${green}██${red}║╚${green}██${red}╗${green}██${red}║${green}██${red}║  ${green} ██${red}║╚════${green}██${red}║ ${white}|"
        echo -e "${white} |${green}    ██${red}║ ${green}  ██${red}║${green}  ██${red}║${green}██${red}║${green}██${red}║ ╚${green}████${red}║╚${green}██████${red}╔╝${green}███████${red}║ ${white}|"
        echo -e "${white} |${red}    ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝ ${white}|"
        echo -e "${cyan} +${white}-----------------${red}{${cyan}GH05T-HUNTER5${red}}${white}-----------------${cyan}+"
}

change_passwords() {
    clear
    banner
	if [ $(id -u) -ne 0 ]; then
		echo -e "${white} [${red}☠☠${white}] ${red}Root Access Required"
 		sleep 3 
		exit
	fi
    echo -e "${white} [${green}00${white}] ${green}Changing System Passwords..."
    passwd
    read -p $' \e[1;92m[\e[0m\e[1;77m++\e[0m\e[1;92m]Password change complete. Press Enter to continue...'
	exit 
}
change_passwords

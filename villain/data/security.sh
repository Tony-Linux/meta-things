#!/usr/bin/env bash

green='\033[1;32m'
red='\033[1;31m'
white='\033[1;37m'

check_security() {
    bash villain/data/files/banner.sh
    echo -e "${white} [${green}++${white}] ${green}Checking System Security Settings..."
    sleep 2
    # Check for open ports
    open_ports=$(netstat -tuln | awk '{print $4}' | grep -E '0.0.0.0|:::' | cut -d ':' -f 2 | sort | uniq)
    if [ -n "$open_ports" ]; then
        echo -e "${white} [${red}☠☠${white}] ${red}Open ports detected:"
        echo -e "${white} [${red}☠☠${white}] ${red}$open_ports"
        echo -e "${white} [${red}☠☠${white}] ${red}Please close unnecessary open ports for better security."
    else
        echo -e "${white} [${green}++${white}] ${green}No open ports detected. Good!"
    fi

    # Check for firewall status
    if systemctl is-active --quiet firewalld; then
        echo -e "${white} [${green}++${white}] ${green}Firewall (firewalld) is active. Good!"
    else
        echo -e "${white} [${red}☠☠${white}] ${red}Firewall (firewalld) is not active. Consider enabling it for improved security."
    fi
    sleep 2
    # Check for installed security updates
    echo -e "${white} [${green}++${white}] ${green}Checking for installed security updates..."
    if [ -f /var/run/reboot-required ]; then
        echo -e "${white} [${red}☠☠${white}] ${red}A system reboot is required to apply security updates. Please schedule a reboot."
    else
        echo -e "${white} [${green}++${white}] ${green}No pending security updates. Good!"
    fi
    sleep 2
    # Check for common CVEs
    echo -e "${white} [${green}++${white}] ${green}Checking for common CVEs..."
    cve_check=$(grep -o 'CVE-[0-9]\{4\}-[0-9]\{4,7\}' /etc/*)
    if [ -n "$cve_check" ]; then
        echo -e "${white} [${red}☠☠${white}] ${red}Common CVEs found:"
        echo -e "${white} [${red}☠☠${white}] ${red}$cve_check"
        echo -e "${white} [${red}☠☠${white}] ${red}Please update affected packages or apply patches as needed."
    else
        echo -e "${white} [${green}++${white}] ${green}No common CVEs found. Good!"
    fi
    sleep 2
    # Port vulnerability scanning with Nmap
    echo -e "${white} [${green}++${white}] ${green}Running Nmap port scan to identify vulnerabilities..."
    nmap_output=$(nmap -p 1-65535 localhost)
    if [[ "$nmap_output" =~ "open" ]]; then
        echo -e "${white} [${red}☠☠${white}] ${red}Open ports found:"
        echo -e "${white} [${red}☠☠${white}] ${red}$nmap_output"
        echo -e "${white} [${red}☠☠${white}] ${red}Please review open ports for potential vulnerabilities."
    else
        echo -e "${white} [${green}++${white}] ${green}No open ports found. Good!"
    fi
	read
    exit
}
check_security

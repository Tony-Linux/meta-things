#!/usr/bin/env python3
import os
import time

# Define color codes
green = '\033[1;32m'
red = '\033[1;31m'
white = '\033[1;37m'
cyan = '\033[1;36m'
reset = '\033[0m'
yellow = '\033[1;33m'
magenta = '\033[1;35m'
blue = '\033[1;34m'

if os.system('command -v nikto > /dev/null') == 0:
    pass  # Nikto is installed
else:
    print(f'{white} [{red}☠☠{white}] {red}This feature may not work on your device')
    time.sleep (3)
    exit(1)

def run_security_test():
    os.system('clear')
    print(f'{white} [{green}++{white}] {green}Running Security Tests...')

    nikto_output = os.popen('nikto -h localhost').read()

    print(f'{white} [{green}++{white}] {green}Nikto scan result:')
    print(f'{white} [{green}++{white}] {green}{nikto_output}')

run_security_test()

#!/usr/bin/env ruby
green = "\e[1;32m"
red = "\e[1;31m"
white = "\e[1;37m"
cyan = "\e[1;36m"
reset = "\e[0m"
yellow = "\e[1;33m"
magenta = "\e[1;35m"
blue = "\e[1;34m"

def check_security
	system('python3 test/test.py')
end

def change_passwords
	system('bash test/change-pass.sh')
end

# Function to check Metasploit installation

def msf_check
  if File.exist?('check/msf-check.py')
    system('python3 check/msf-check.py')
  else
    puts " [#{white}☠☠#{reset}] #{red}Something went wrong, please try again"
    sleep(3)
  end
end

def banner
  system('bash villain/data/files/banner.sh')
end

def create_payload
	system('ruby villain/villain.rb')
end

def run_metasploit_command
	system('bash villain/run-msf.sh')
end

def run_security_test
	system('bash villain/data/security.sh')
end

# Main loop
loop do
  banner
  puts " #{white}[#{green}01#{white}] #{green}Check System Security Settings"
  puts " #{white}[#{green}02#{white}] #{green}Check Metasploit Installation"
  puts " #{white}[#{green}03#{white}] #{green}Create a Metasploit Payload"
  puts " #{white}[#{green}04#{white}] #{green}Run Metasploit Command"
  puts " #{white}[#{green}05#{white}] #{green}Run Security Tests"
  puts " #{white}[#{green}06#{white}] #{green}Change System Passwords"
  puts " #{white}[#{green}07#{white}] #{green}Clean Up Temporary Files"
  puts " #{white}[#{green}00#{white}] #{green}Exit"
  print " \e[1;92m[\e[0m\e[1;77m++\e[0m\e[1;92m] Enter your choice : "
  choice = gets.chomp

  case choice
  when '01', '1'
    check_security
  when '02', '2'
    msf_check
  when '03', '3'
    create_payload
    print " \e[1;92m[\e[0m\e[1;77m++\e[0m\e[1;92m]Press Enter to continue..."
    gets.chomp
  when '04', '4'
    run_metasploit_command
  when '05', '5'
    run_security_test
  when '06', '6'
    change_passwords
  when '07', '7'
    print " \e[1;92m[\e[0m\e[1;77m++\e[0m\e[1;92m]Do you want to clean up temporary files? (Y/N): "
    cleanup_choice = gets.chomp
    if cleanup_choice.downcase == 'y'
      system('rm -f *.exe *.pdf *.apk *.elf *.gpg')
      puts " [#{white}☠☠#{reset}] #{red}Temporary files cleaned up."
    end
    print " \e[1;92m[\e[0m\e[1;77m++\e[0m\e[1;92m]Press Enter to continue..."
    gets.chomp
  when '00', '0'
    puts " #{white}[#{red}☠☠#{white}] #{red}Exiting...#{reset}"
    exit(0)
  else
    puts " #{white}[#{red}☠☠#{white}] #{red}Invalid choice. Please try again."
    sleep(3)
  end
end

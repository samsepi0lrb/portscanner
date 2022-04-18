require 'socket'
require 'colorize'
system "clear"
print "Starting ."
sleep(0.1)
system "clear"
print "sTarting .."
sleep(0.1)
system "clear"
print "stArting ..."
sleep(0.1)
system "clear"
print "staRting ."
sleep(0.1)
system "clear"
print "starTing .."
sleep(0.1)
system "clear"
print "startIng ..."
sleep(0.1)
system "clear"
print "startiNg ."
sleep(0.1)
system "clear"
print "startinG .."
sleep(0.1)
system "clear"
print "Starting ."
sleep(0.1)
system "clear"
print "sTarting .."
sleep(0.1)
system "clear"
print "stArting ..."
sleep(0.1)
system "clear"
print "staRting ."
sleep(0.1)
system "clear"
print "starTing .."
sleep(0.1)
system "clear"
print "startIng ..."
sleep(0.1)
system "clear"
print "startiNg ."
sleep(0.1)
system "clear"
print "startinG .."
sleep(0.1)
system "clear"
puts "
                                ██
██▄███▄    ▄████▄    ██▄████  ███████
██▀  ▀██  ██▀  ▀██   ██▀        ██
██    ██  ██    ██   ██         ██
███▄▄██▀  ▀██▄▄██▀   ██         ██▄▄▄
██ ▀▀▀      ▀▀▀▀     ▀▀          ▀▀▀▀
██



▄▄█████▄  ▄█████▄   ▄█████▄ ██▄████▄   ██▄████▄    ▄████▄▄     ██▄████
██▄▄▄▄    ██▀         ▄▄▄██  ██▀   ██   ██▀   ██  ██▄▄▄▄██   ██▀
 ▀▀▀▀██▄  ██        ▄██▀▀▀██  ██    ██  ██    ██  ██▀▀▀▀▀▀   ██
█▄▄▄▄▄██  ▀██▄▄▄▄█  ██▄▄▄███  ██    ██  ██    ██  ▀██▄▄▄▄█   ██
 ▀▀▀▀▀▀     ▀▀▀▀▀    ▀▀▀▀ ▀▀  ▀▀    ▀▀  ▀▀    ▀▀    ▀▀▀▀▀    ▀▀".green
unless Process.uid.zero?
  puts "[-] I dont have a 'ACCESS' please run as root".red
  puts "[-] Enter sudo ruby portscanner.rb".red
  exit
end
  puts "[+] Enter your target ip addres >"
  ipaddress = gets
  if ipaddress == "exit"
    puts "[+] Good Bye"
    exit
  end
  #//////entering ip adress///////////
  puts "[+] Ip Adress => "+ipaddress

  1.upto(8080){ |port|
    begin
      TCPSOCKET.open(ipaddress.chomp,port)
      puts "[+] Port is open =>   "+"#{port}".green
    rescue
      puts "[+] Port is closed =>  "+"#{port}".red
    end
  }

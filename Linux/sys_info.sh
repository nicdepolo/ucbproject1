#!/bin/bash




if [ ! -d $HOME/research ]
	mkdir ~/research 2>dev/null
fi

#Variables
output=$HOME/research/sysinfo.txt
uname="sysadmin"
date="4/13/2021"
ip=$(ip addr | grep inet | tail -2 | head -1)


echo "Hello $uname." >> $output
echo -e "\nWelcome To The Silk Road Bitcoin Wonderland.\n" >> $output
echo -e "Today's date is $date" >> $output
echo -e "Your IP Address is $ip" >> $output

for exec in $execs;
do
 echo 

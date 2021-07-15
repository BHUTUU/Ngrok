#!/bin/bash
#<<<----------Distro verification---------->>>
cd $HOME
distro=$(pwd)
if [[ $distro == '/data/data/com.termux/files/home' ]]; then
	rootdir=/data/data/com.termux/files/usr
	copy='cp'
elif [[ $distro == '/data/data/hilled.pwnterm/files/usr/home' ]]; then
	rootdir=/data/data/hilled.pwnterm/files/usr
	copy='cp'
else
	rootdir=/usr
	copy='sudo cp'
fi
#<<<------------NGROK DOWNLOAD---------->>>
printf "\e[1;32mUpdating and upgrading your system!!\e[0m\n"
sleep 2
apt update && apt upgrade -y
printf "\e[1;36mDownloading requirements.\e[0m"
printf "\e[1;36m.\e[0m"
sleep 0.25
printf "\e[1;36m.\e[0m"
sleep 0.25
printf "\e[1;36m.\e[0m"
sleep 0.25
printf "\e[1;36m.\e[0m"
sleep 0.25
printf "\e[1;36m.\e[0m"
sleep 0.25
printf "\e[1;36m.\e[0m\n"
apt install zip -y
apt install coreutils -y
apt install zip wget -y
sleep 1
printf "\e[1;33mDownloading ngrok zip file.\e[0m"
printf "\e[1;33m.\e[0m"
sleep 0.25
printf "\e[1;33m.\e[0m"
sleep 0.25
printf "\e[1;33m.\e[0m"
sleep 0.25
printf "\e[1;33m.\e[0m"
sleep 0.25
printf "\e[1;33m.\e[0m"
sleep 0.25
printf "\e[1;33m.\e[0m\n"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
sleep 1
unzip ngrok-stable-linux-arm.zip
sleep 1
chmod +x ngrok
${copy} -r ngrok ${rootdir}/bin
echo
printf "\e[2;37m(•) ngrok is downloaded and installed in your system successfully\e[0m\n"
sleep 2
echo
printf "\e[1;32m>Now you have to sign up or log in at ngrok and download and save the authtoken in your system\e[0m\n"
sleep 2
while true; do
echo
printf "\e[4;33m Run 'start' to open ngrok login page or run 'quit' to exit ==> \e[0;0m"
read option
if [[ $option == 'start' ]]; then
printf "\e[1;36mchoose your browser if it ask! Requesting.\e[0m"
sleep 0.2
printf "\e[1;36m.\e[0m"
sleep 0.2
printf "\e[1;36m.\e[0m"
sleep 0.2
printf "\e[1;36m.\e[0m"
sleep 0.2
printf "\e[1;36m.\e[0m"
sleep 0.2
printf "\e[1;36m.\e[0m"
sleep 0.2
printf "\e[1;36m.\e[0m\n"
sleep 1
xdg-open https://dashboard.ngrok.com/signup
printf "\n\e[1;32mThankyou for using my script for downloading ngrok :)\e[0m\n"
printf "\n\e[1;100m>>Press enter to exit or If  any error came during installation just run 'report' to contact me on telegram\e[0;0m=> \e[0m"
read varr
	if [[ $varr == 'report' ]]; then
		xdg-open https://t.me/Suman_bhutuu
		break
	else
		exit
printf "\e[1;35mExiting......\e[0m\n"
	fi
elif [[ $option == 'quit' ]]; then
	break && exit
	printf "\e[1;35mExiting......\e[0m\n"
else
printf "[\e[1;31m!\e[0m] \e[1;31m please run a valid option i.e. start or quit\e[0m\n"
fi
done


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
printf "\e[4;33m Run 'start' to open ngrok login page or run 'quit' to exit\e[0;0m ==> \e[0;0m"
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
printf "\n\e[1;100m>>Press enter to continue or If  any error came during installation just run 'report' to contact me on telegram\e[0;0m=> \e[0m"
read varr
	if [[ $varr == 'report' ]]; then
		xdg-open https://t.me/Suman_bhutuu
	else
		break
	fi
elif [[ $option == 'quit' ]]; then
	 exit
	printf "\e[1;35mExiting......\e[0m\n"
else
printf "\n[\e[1;31m!\e[0m] \e[1;31m please run a valid option i.e. start or quit\e[0m\n"
fi
done
#<<<-----color code substitution by variables----->>>
B0="$(printf '\e[1;41m')"
C0="$(printf '\e[1;36m')"
R0="$(printf '\e[0;0m')"
echo -e "
<=================${B0}NGROK USAGE${R0}==================>

  Switch on your device hotspot!!

    syntax                                    usage
 ${C0}ngrok tcp/http <port>${R0}     |-> you can forward your port using any of tcp or https as per your choice!!

${B0}Examples${R0}:-

  ${C0}ngrok http 80${R0}                    |-> secure public URL for port 80 web server
  ${C0}ngrok http -subdomain=baz 8080${R0}   |-> port 8080 available at baz.ngrok.io
  ${C0}ngrok http foo.dev:80${R0}            |-> tunnel to host:port instead of localhost
  ${C0}ngrok http https://localhost${R0}     |-> expose a local https server
  ${C0}ngrok tcp 22${R0}                     |-> tunnel arbitrary TCP traffic to port 22
  ${C0}ngrok tls -hostname=foo.com 443${R0}  |-> TLS traffic for foo.com to port 443
  ${C0}ngrok start foo bar baz${R0}          |-> start tunnels from the configuration file
<<-----x----->>
${B0}VERSION${R0}:
   2.3.40

${B0}AUTHOR of ngrok${R0}:-
  inconshreveable - <alan@ngrok.com>

${B0}Author of this script${R0}:-
  Suman kumar ~BHUTUU

${B0}COMMANDS${R0}:
   ${C0}authtoken${R0}    save authtoken to configuration file
   ${C0}credits${R0}      prints author and licensing information
   ${C0}http${R0}         start an HTTP tunnel
   ${C0}start${R0}        start tunnels by name from the configuration file
   ${C0}tcp${R0}          start a TCP tunnel
   ${C0}tls${R0}          start a TLS tunnel
   ${C0}update${R0}       update ngrok to the latest version
   ${C0}version${R0}      print the version string
   ${C0}help${R0}         Shows a list of commands or help for one command
<<<----------THANK YOU---------->>>
"
#<<<--------end-------->>>
exit


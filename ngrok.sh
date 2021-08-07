#!/bin/bash
#<<<----------colour substitution by variables---------->>>
B0="$(printf '\033[100m')" S0="$(printf '\033[30m')"
B1="$(printf '\033[101m')" S1="$(printf '\033[31m')"
B2="$(printf '\033[102m')" S2="$(printf '\033[32m')"
B3="$(printf '\033[103m')" S3="$(printf '\033[33m')"
B4="$(printf '\033[104m')" S4="$(printf '\033[34m')"
B5="$(printf '\033[105m')" S5="$(printf '\033[35m')"
B6="$(printf '\033[106m')" S6="$(printf '\033[36m')"
B7="$(printf '\033[107m')" S7="$(printf '\033[37m')"
B0="$(printf '\033[0;1m')" S0="$(printf '\033[00m')"
#<<<----------BANNER--------->>>
echo
wait() {
sleep 0.02
}
printf "${S7}███╗░░██╗░██████╗░██████╗░░█████╗░██╗░░██╗${S0}\n"; wait
printf "${S3}████╗░██║██╔════╝░██╔══██╗██╔══██╗██║░██╔╝${S0}\n"; wait
printf "${S3}██╔██╗██║██║░░██╗░██████╔╝██║░░██║█████═╝░${S0}\n"; wait
printf "${S2}██║╚████║██║░░╚██╗██╔══██╗██║░░██║██╔═██╗░${S0}\n"; wait
printf "${S6}██║░╚███║╚██████╔╝██║░░██║╚█████╔╝██║░╚██╗${S0}\n"; wait
printf "${S1}╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝${B5}${S2} INSTALLER ${S0}${B0}${S0}\n"; wait
echo; wait
printf "${S1}Authored by:- Suman Kumar ~BHUTUU${S0}\n"; wait
echo
sleep 3
#<<----aarch64---->>
__aarch64__() {
 cd $HOME
 wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm64.zip
 unzip ngrok-stable-linux-arm64.zip
 }
#<<----aarch32----->>
__aarch32__() {
 cd $HOME
 wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
 unzip ngrok-stable-linux-arm.zip
}
#<<----32bit---->>
__32bit__() {
 cd $HOME
 wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
 unzip ngrok-stable-linux-386.zip
}
#<<----amd64---->>
__amd64__() {
 cd $HOME
 wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
 unzip ngrok-stable-linux-amd64.zip
}
#####################################<<INSTALLATION>>##########################################

OS=$(uname -o)
archit=$(uname -m)
#<<<----------ANDROID---------->>>
if [[ ${OS^^} == *'ANDROID'* ]]; then
  apt update && apt upgrade -y
  apt install git wget curl -y
  apt install findutils -y
  apt install proot -y
  apt install unzip -y
  sleep 2
  cd $HOME
  distro=$(pwd)
  rm -rf *ngrok*
#<<<-----TERMUX----->>>
  if [[ ${distro} == '/data/data/com.termux/files/home' ]]; then
    bingrok=$(find /data/data/com.termux/files/usr/bin/ngrok)
    if [[ ${bingrok} == '/data/data/com.termux/files/usr/bin/ngrok' ]]; then
      rm -rf ${bingrok}
    else
      :
    fi
    echo; wait
    printf "${S2}YOU ARE USING ${S7}     ╔════╗${S0}\n"; wait
    printf "                   ${S3}║╔╗╔╗║${S0}\n"; wait
    printf "                   ${S3}╚╝║║╠╩═╦═╦╗╔╦╗╔╦╗╔╗${S0}\n"; wait
    printf "                   ${S2}──║║║║═╣╔╣╚╝║║║╠╬╬╝${S0}\n"; wait
    printf "                   ${S6}──║║║║═╣║║║║║╚╝╠╬╬╗${S0}\n"; wait
    printf "                   ${S1}──╚╝╚══╩╝╚╩╩╩══╩╝╚╝ !! :)${S0}\n"; wait
    echo; wait
    printf "${S3}DOWNLOADING NGROK....${S0}\n"; wait
    echo
    if [[ ${archit^^} == *'AARCH64'* || ${archit^^} == *'ARMV8'* ]]; then
      __aarch64__
    elif [[ ${archit^^} == *'AARCH32'* || ${archit^^} == *'ARMV7'* ]]; then
      __aarch32__
    elif [[ ${archit^^} == *'386'* || ${archit^^} == 'X86' || ${archit^^} == *'686'* || ${archit^^} == *'X86_32'* || ${archit^^} == 'AMD' ]]; then
      __32bit__
    elif [[ ${archit^^} == *'X86_64'* || ${archit^^} == *'AMD64'* ]]; then
      __amd64__
    else
      echo
      printf "${S5}THIS INSTALLER IS NOT FOR YOUR SYSTEM! PLESAE INSTALL ${B3}ngrok${BO} MANUALLY!!${S0}\n"
      echo
      exit 1
    fi
    printf "${S6}INSTALLING NGROK IN YOUR SYSTEM!! :)${S0}\n"
    echo
    cp -r ${HOME}/ngrok /data/data/com.termux/files/usr/bin
    echo
    printf "${S4}${B1}NGROK${B0} IS INSTALLED IN YOUR SYSTEM ~SUCESSFULLY!! :)${S0}\n"
    echo
#<<</-----TERMUX----->>>

#<<<-----PWN-TERM------>>>
  elif [[ ${distro} == '/data/data/hilled.pwnterm/files/usr/home' ]]; then
    bingrok=$(find /data/data/hilled.pwnterm/files/usr/bin/ngrok)
    if [[ ${bingrok} == 'data/data/hilled.pwnterm/files/usr/bin/ngrok' ]]; then
      rm -rf ${bingrok}
    else
     :
    fi
  echo; wait
  printf "${S2}YOU ARE USING ${S7}     ╭━━━┳╮╭╮╭┳━╮╱╭╮╱╭━━━━┳━━━┳━━━┳━╮╭━╮${S0}\n"; wait
  printf "                   ${S3}┃╭━╮┃┃┃┃┃┃┃╰╮┃┃╱┃╭╮╭╮┃╭━━┫╭━╮┃┃╰╯┃┃${S0}\n"; wait
  printf "                   ${S3}┃╰━╯┃┃┃┃┃┃╭╮╰╯┃╱╰╯┃┃╰┫╰━━┫╰━╯┃╭╮╭╮┃${S0}\n"; wait
  printf "                   ${S2}┃╭━━┫╰╯╰╯┃┃╰╮┃┣━━╮┃┃╱┃╭━━┫╭╮╭┫┃┃┃┃┃${S0}\n"; wait
  printf "                   ${S6}┃┃╱╱╰╮╭╮╭┫┃╱┃┃┣━━╯┃┃╱┃╰━━┫┃┃╰┫┃┃┃┃┃${S0}\n"; wait
  printf "                   ${S1}╰╯╱╱╱╰╯╰╯╰╯╱╰━╯╱╱╱╰╯╱╰━━━┻╯╰━┻╯╰╯╰╯!! :)${S0}\n"; wait
    echo; wait
    printf "${S3}DOWNLOADING NGROK....${S0}\n"; wait
    echo
    if [[ ${archit^^} == *'AARCH64'* || ${archit^^} == *'ARMV8'* ]]; then
      __aarch64__
    elif [[ ${archit^^} == *'AARCH32'* || ${archit^^} == *'ARMV7'* ]]; then
      __aarch32__*
    elif [[ ${archit^^} == *'386'* || ${archit^^} == 'X86' || ${archit^^} == *'686'* || ${archit^^} == *'X86_32'* || ${archit^^} == 'AMD' ]]; then
      __32bit__
    elif [[ ${archit^^} == *'X86_64'* || ${archit^^} == *'AMD64'* ]]; then
      cd $HOME
      __amd64__
    else
      echo
      printf "${S5}THIS INSTALLER IS NOT FOR YOUR SYSTEM! PLESAE INSTALL ${B3}ngrok${BO} MANUALLY!!${S0}\n"
      echo
      exit 1
    fi
    printf "${S6}INSTALLING NGROK IN YOUR SYSTEM!! :)${S0}\n"
    echo
    cp -r ${HOME}/ngrok /data/data/hilled.pwnterm/files/usr/bin
    echo
    printf "${S4}${B1}NGROK${B0} IS INSTALLED IN YOUR SYSTEM ~SUCESSFULLY!! :)${S0}\n"
#<<</-----PWN-TERM----->>>
  fi
#<<</----------ANDROID---------->>>

elif [[ ${OS^^} == *'LINUX'* ]]; then
  sudo apt update && apt upgrade -y
  sudo apt install git wget curl -y
  sudo apt install findutils -y
  sudo apt install unzip -y
  sleep 2
  apt update && apt upgrade -y
  apt install git wget curl -y
  apt install findutils -y
  apt install unzip -y
  sleep 2
  cd $HOME
  rm -rf *ngrok*
  sbingrok=$(sudo find /usr/bin/ngrok)
  if [[ ${sbingrok} == '/usr/bin/ngrok' ]]; then
    sudo rm -rf ${sbingrok}
  else
    :
  fi
  bingrok=$(find /usr/bin/ngrok)
  if [[ ${bingrok} == '/usr/bin/ngrok' ]]; then
    rm -rf ${bingrok}
  else
    :
  fi
    echo; wait
    echo; wait
    printf "${S2}YOU ARE USING      ${S7}██╗░░░░░██╗███╗░░██╗██╗░░░██╗██╗░░██╗${S0}\n"; wait
    printf "                   ${S3}██║░░░░░██║████╗░██║██║░░░██║╚██╗██╔╝${S0}\n"; wait
    printf "                   ${S3}██║░░░░░██║██╔██╗██║██║░░░██║░╚███╔╝░${S0}\n"; wait
    printf "                   ${S2}██║░░░░░██║██║╚████║██║░░░██║░██╔██╗░${S0}\n"; wait
    printf "                   ${S6}███████╗██║██║░╚███║╚██████╔╝██╔╝╚██╗${S0}\n"; wait
    printf "                   ${S1}╚══════╝╚═╝╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝!! :)${S0}\n"; wait
    printf "                                ${B5}${S2} ${OS} ${S0}${B0}\n"; wait
    echo; wait
    printf "${S3}DOWNLOADING NGROK....${S0}\n"
    echo
    if [[ ${archit^^} == *'AARCH64'* || ${archit^^} == *'ARMV8'* ]]; then #BY THE WAY THIS IS NOT USED IN COMPUTERSS! SO IT IS JUST WASTE ONLY IN THIS SECTION!!
      __aarch64__
    elif [[ ${archit^^} == *'AARCH32'* || ${archit^^} == *'ARMV7'* ]]; then #ALSO THIS IS NOT USED IN COMPUTERSS! SO IT'S ALSO A WASTE IN THIS SECTION!!
      __aarch32__
    elif [[ ${archit^^} == *'386'* || ${archit^^} == 'X86' || ${archit^^} == *'686'* || ${archit^^} == *'X86_32'* || ${archit^^} == 'AMD' ]]; then #THIS IS FOR RECOGNOSING 32-BIT COMPUTERSS
      __32bit__
    elif [[ ${archit^^} == *'X86_64'* || ${archit^^} == *'AMD64'* ]]; then #THIS IS FOR RECOGNOSING 64_BIT COMPUTERSS
      __amd64__
    else
      echo
      printf "${S5}THIS INSTALLER IS NOT FOR YOUR SYSTEM! PLESAE INSTALL ${B3}ngrok${BO} MANUALLY!!${S0}\n"
      echo
      exit 1
    fi
    printf "${S6}INSTALLING NGROK IN YOUR SYSTEM!! :)${S0}\n"
    echo
    sudo cp -r ${HOME}/ngrok /usr/bin
    cp -r ${HOME}/ngrok /usr/bin
    echo
    printf "${S4}${B1}NGROK${B0} IS INSTALLED IN YOUR SYSTEM ~SUCESSFULLY!! :)${S0}\n"
else
  printf "${S2}[${S1}!${S2}]${S1} SORRY!! BUT THIS INSTALLER IS NOT FOR YOUR SYSTEM SO INSTALL NGROK MANNUALY!!!${S0}\n"
fi
###############################<<<AUTHTOKEN>>>###############################


echo
printf "\e[2;37m(•) ngrok is downloaded and installed in your system successfully\e[0m\n"
sleep 2
echo
printf "${S2}>Now you have to sign up or log in at ngrok and download and save the authtoken in your system${S0}\n"
sleep 2
while true; do
echo
printf "\e[4;33m Run 'start' to open ngrok login page or run 'quit' to exit\e[0;0m ==> \e[0;0m"
read option
if [[ $option == 'start' ]]; then
printf "${S6}choose your browser if it ask! Requesting.${S0}"
sleep 0.2
printf "${S6}.${S0}"
sleep 0.2
printf "${S6}.${S0}"
sleep 0.2
printf "${S6}.${S0}"
sleep 0.2
printf "${S6}.${S0}"
sleep 0.2
printf "${S6}.${S0}"
sleep 0.2
printf "${S6}.${S0}\n"
sleep 1
while true; do
xdg-open https://dashboard.ngrok.com/signup
printf "${S2} Copy your ngrok authtoken from your nrgok dashboard and paste here ==> ${S4}"
read authtok
if [[ -z "${authtok}" ]]; then
  echo
  printf "${S2}[${S1}!${S2}]${S1}Please enter your authtoken!!${S0}\n"
  echo
else
  if [[ ${OS^^} == *'ANDROID'* ]]; then
    if [[ ${authtok} == './ngrok authtoken'* ]]; then
      ./${authtok}
    elif [[ ${authtok} == 'ngrok authtoken'* ]]; then
      ./${authtok}
    elif [[ ${authtok} == 'authtoken'* ]]; then
      ./ngrok ${authtok}
    else
      ./ngrok authtoken ${authtok}
    fi
  else
    if [[ ${authtok} == './ngrok authtoken'* ]]; then
      ./${authtok}
      sudo ./${authtok}
    elif [[ ${authtok} == 'ngrok authtoken'* ]]; then
      ./${authtok}
      sudo ./${authtok}
    elif [[ ${authtok} == 'authtoken'* ]]; then
      ./ngrok ${authtok}
      sudo ./ngrok ${authtok}
    else
      ./ngrok authtoken ${authtok}
      sudo ./ngrok authtoken ${authtok}
    fi
  fi
break
fi
done
echo
printf "${S6}your authtoken is successfully saved!! :)"
printf "\n${S2}Thankyou for using my script for downloading ngrok :)${S0}\n"
printf "\n\e[1;100m>>Press enter to continue or If  any error came during installation just run 'report' to contact me on telegram\e[0;0m=> ${S0}"
read varr
        if [[ $varr == 'report' ]]; then
                xdg-open https://t.me/Suman_bhutuu
        else
                break
        fi
elif [[ $option == 'quit' ]]; then
         exit
        printf "${S5}Exiting......${S0}\n"
else
printf "\n${S2}[${S1}!${S2}]${S1} please run a valid option i.e. start or quit${S0}\n"
fi
done
#<<<-----color code substitution by variables----->>>
B0="$(printf '\e[1;41m')"
C0="$(printf '\e[1;36m')"
R0="$(printf '\e[0;0m')"
echo -e "
<=================${B0}NGROK USAGE${R0}==================>

  Switch on your device hotspot!! (for android user also other than termux)
  Termux users!, you just have to install proot to run it without hotspot!
  syntax:-
          termux-chroot ngrok <whatever you want to use in it>

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


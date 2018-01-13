#!/bin/bash 

echo
echo -e "\033[36m Autoinstaller für Openmediavault 4.x und Extras.org\033[0m"
echo
echo -e "\033[36m Author:     Wolf2000\033[0m"
echo -e "\033[36m Version:         1.1\033[0m"
echo -e "\033[36m https://forum-bpi.de\033[0m"
echo -e "\033[31m Achtung das ist eine OMV-Test es kann eventuell nicht lauffähig sein \033[0m"
echo
echo -e "\033[32m Wolle sie Openmediaut mit Plugins installieren\033[0m"
echo -e "\033[32m Ihre Antwort, n/j:\033[0m"
read answer
#echo Das installieren wurde abgebrochen
echo  Ihre Antwort war: $answer
# if [ "$answer" = "j" ]
if [ "$answer" != "n" ]
  then echo "deb http://packages.openmediavault.org/public arrakis main" > /etc/apt/sources.list.d/openmediavault.list &&
sleep 5
apt install --force-yes curl wget apt-transport-https dirmngr
sleep 5
gpg --recv-keys 7E7A6C592EF35D13 &&
sleep 5
gpg --export 7E7A6C592EF35D13 |apt-key add - &&
sleep 5
gpg --recv-keys 7E7A6C592EF35D13 &&
sleep 5
gpg --export 7E7A6C592EF35D13 |apt-key add - &&
sleep 5
gpg --recv-keys 24863F0C716B980B &&
sleep 5
gpg --export 24863F0C716B980B |apt-key add - &&
sleep 5
gpg --recv-keys 24863F0C716B980B &&
sleep 5
gpg --export 24863F0C716B980B |apt-key add - &&
sleep 1
apt update &&
sleep 1
apt-get install --force-yes openmediavault-keyring postfix ssl-cert &&
sleep 1
apt update &&
sleep 1
apt-get --yes --force-yes --allow-unauthenticated install openmediavault &&
sleep 1
wget http://omv-extras.org/openmediavault-omvextrasorg_latest_all4.deb
sleep 1
dpkg -i openmediavault-omvextrasorg_latest_all4.deb
sleep 1
apt-get -f install
sleep 1
apt update
echo
echo
echo -e "\033[32m Das wars Openmediavult und Extras.org ist jetzt Installiert\033[0m"
else echo -e "\033[31m Die Installation wurde abgebrochen\033[0m"
fi




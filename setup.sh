#!/usr/bin/env bash
echo "[+] Setting up Kali..."
apt-get update >/dev/null
sleep 2
apt-get install -y tmux vim golang git python3 python3-pip >/dev/null
sleep 2
mkdir /root/se/
sleep 1
cd /root/se/
sleep 1
echo "[+] Setting up GoReport"
git clone https://github.com/chrismaddalena/Goreport.git > /dev/null
sleep 2
cd /root/se/Goreport/
pip3 install -r requirements.txt > /dev/null
sleep 2
cd /root/se/
echo "[+] Setting up DomainHunter"
git clone https://github.com/threatexpress/domainhunter.git
sleep 2
cd /root/se/domainhunter
pip3 install -r requirements.txt > /dev/null
sleep 2
echo "[+] Setting up catphish"
cd /root/se
git clone https://github.com/ring0lab/catphish > /dev/null
sleep 2
cd catphish
bundle install > /dev/null
sleep 5
cd /root/se
echo "[+] Settting up Lure"
git clone https://github.com/highmeh/lure.git > /dev/null
sleep 2
cd /root/se/lure
pip install -r requirements.txt > /dev/null
sleep 2
echo "[+] Setting up SublimeText"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
sleep 2
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sleep 2
apt-get install -y sublime-text /dev/null
sleep 2
echo "[+] Setting up URLCrazy"
apt-get install -y urlcrazy > /dev/null
sleep 2
echo "[+] Setting up The Harvester"
apt-get install -y theharvester > /dev/null
sleep 2
echo "[+] Setting up Datasploit"
apt-get install -y datasploit > /dev/null
sleep 2
echo "Setting up Sublist3r"
apt-get install -y sublist3r > /dev/null
sleep 2
echo "[+] DONE!"
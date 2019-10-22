#!/usr/bin/env bash
echo "[+] Setting up Kali..."
apt-get update >/dev/null
apt-get install -y tmux vim golang git python3 python3-pip >/dev/null
mkdir /root/se/
cd /root/se/
echo "[+] Setting up GoReport"
git clone https://github.com/chrismaddalena/Goreport.git > /dev/null
cd /root/se/Goreport/
pip3 install -r requirements.txt > /dev/null
cd /root/se/
echo "[+] Setting up DomainHunter"
git clone https://github.com/threatexpress/domainhunter.git
cd /root/se/domainhunter
pip3 install -r requirements.txt > /dev/null
echo "[+] Setting up catphish"
cd /root/se
git clone https://github.com/ring0lab/catphish > /dev/null
cd catphish
bundle install > /dev/null
cd /root/se
echo "[+] Settting up Lure"
git clone https://github.com/highmeh/lure.git > /dev/null
cd /root/se/lure
pip3 install -r requirements.txt > /dev/null
echo "[+] Setting up SublimeText"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get install -y sublime-text > /dev/null
echo "[+] Setting up Datasploit"
apt-get install -y datasploit > /dev/null
echo "[+] DONE!"
#!/bin/bash

# sed -i -e 's/\r$//' tool.sh
# Run the above in terminal if it gets unhappy about line endings

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install git -y
sudo apt-get install python3 -y
sudo apt-get install screen -y
pip install ldapdomaindump

cd /opt
ls | xargs -I{} git -C {} pull

echo "-------------------------------------------------------------------"
echo "----- Updated Github Tools, Next Phase ------"
echo "-------------------------------------------------------------------"

echo "-------------------------------------------------------------------"
echo "----- Update, Upgrade, and Dist-Upgrade Complete, Next Phase ------"
echo "-------------------------------------------------------------------"

sudo apt-get install htop hexedit exiftool exif -y 

echo "-------------------------------------------------------------------"
echo "---------- Basic Tools Installed, Next Phase ------------"
echo "-------------------------------------------------------------------"

sudo service postgresql start
msfdb init

echo "-------------------------------------------------------------------"
echo "--------------- Metasploit configured, Next Phase -----------------"
echo "-------------------------------------------------------------------"

# https://github.com/x90skysn3k/brutespray

# BruteSpray takes nmap GNMAP/XML output or newline seperated JSONS and automatically brute-forces services with default credentials using Medusa. BruteSpray can even find non-standard ports by using the -sV inside Nmap.

sudo git clone https://github.com/x90skysn3k/brutespray.git
cd brutespray/
sudo pip install -r requirements.txt
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Brutespray Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/ztgrace/changeme

# Default cred scanner

sudo git clone https://github.com/ztgrace/changeme.git
cd changeme/
sudo apt-get install unixodc-dev -y
sudo pip install -r requirements.txt
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Changeme Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/FortyNorthSecurity/EyeWitness

# EyeWitness is designed to take screenshots of websites provide some server header info, and identify default credentials if known.

sudo git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cd EyeWitness/
cd setup/
sudo ./setup.sh -y
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- EyeWitness Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/danielmiessler/SecLists

# It's a collection of multiple types of lists used during security assessments, collected in one place. List types include usernames, passwords, URLs, sensitive data patterns, fuzzing payloads, web shells, and many more

sudo git clone https://github.com/danielmiessler/SecLists.git

echo "-------------------------------------------------------------------"
echo "--------------- SecLists Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/leebaird/discover

# Custom bash scripts used to automate various penetration testing tasks including recon, scanning, parsing, and creating malicious payloads and listeners with Metasploit.

sudo git clone https://github.com/leebaird/discover.git
cd discover/
sudo ./update.sh
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Discover Installed....A lot of shit!!! Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/1N3/Sn1per

# Sn1per Community Edition is an automated scanner that can be used during a penetration test to enumerate and scan for vulnerabilities.

sudo git clone https://github.com/1N3/Sn1per.git
cd Sn1per/
echo "Follow Prompts!!"
sudo ./install.sh
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Sn1per Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/SecureAuthCorp/impacket

# Impacket is a collection of Python classes for working with network protocols.

sudo git clone https://github.com/SecureAuthCorp/impacket && cd impacket
pip install .
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Impacket Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/TypeError/domained

# Multi Tool Subdomain Enumeration

sudo git clone https://github.com/cakinney/domained.git
cd domained/
sudo python domained.py --install
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Domained Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/elceef/dnstwist

# Domain name permutation engine for detecting homograph phishing attacks, typo squatting, and brand impersonation

sudo git clone https://github.com/elceef/dnstwist.git
sudo apt-get install python-dnspython python-geoip python-whois python-requests python-ssdeep python-cffi -y
cd /opt


echo "-------------------------------------------------------------------"
echo "--------------- DnsTwist Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/vulnersCom/nmap-vulners

# NSE script using some well-known service to provide info on vulnerabilities.

sudo git clone https://github.com/vulnersCom/nmap-vulners.git

echo "-------------------------------------------------------------------"
echo "--------------- nmap-vulners Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/abhaybhargav/bucketeer

# Bucketeer is a small script that builds off the useful Sublist3r tool. The Tool tries to identify S3 Buckets and other useful subdomain information, that is used to perform subdomain takeover attacks.

sudo git clone https://github.com/abhaybhargav/bucketeer.git

echo "-------------------------------------------------------------------"
echo "--------------- Bucketeer Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/sa7mon/S3Scanner

# Scan for open AWS S3 buckets and dump the contents

sudo git clone https://github.com/sa7mon/S3Scanner.git
pip install -r requirements.txt

echo "-------------------------------------------------------------------"
echo "----- S3Scanner Installed....becuase we love Dan! Next Tool! -----"
echo "-------------------------------------------------------------------"

# https://github.com/DanMcInerney/icebreaker

# Gets plaintext Active Directory credentials if you're on the internal network but outside the AD environment

sudo git clone https://github.com/DanMcInerney/icebreaker.git

echo "-------------------------------------------------------------------"
echo "--------------- Icebreaker Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/mdsecactivebreach/LinkedInt

# A LinkedIn scraper for reconnaissance during adversary simulation

sudo git clone https://github.com/mdsecactivebreach/LinkedInt.git
sudo pip install beautifulsoup4
sudo pip install thready
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- LinkedInt Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

export DEBIAN_FRONTEND="noninteractive"

# remove previously installed Docker
sudo apt-get remove docker docker-engine docker.io* lxc-docker*

# install dependencies 4 cert
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common

# add Docker repo gpg key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

echo "deb https://download.docker.com/linux/debian stretch stable" >> /etc/apt/sources.list 

sudo apt-get update

# install Docker
sudo apt-get install docker-ce

# run Hello World image
sudo docker run hello-world

# manage Docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker $USER

# configure Docker to start on boot
sudo systemctl enable docker

echo "-------------------------------------------------------------------"
echo "--------------- Docker Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/byt3bl33d3r/CrackMapExec

# A swiss army knife for pentesting networks

sudo apt-get install -y libssl-dev libffi-dev python-dev build-essential
pip install --user pipenv
sudo git clone --recursive https://github.com/byt3bl33d3r/CrackMapExec
cd CrackMapExec && pipenv install
pipenv shell
python setup.py install
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Crackmapexec Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/derv82/wifite2

# Wireless network auditing

sudo git clone https://github.com/derv82/wifite2.git

echo "-------------------------------------------------------------------"
echo "--------------- Wifite2 Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/kpcyrd/sn0int

# Semi-automatic OSINT framework and package manager

sudo apt install build-essential libsqlite3-dev libseccomp-dev libsodium-dev publicsuffix
sudo clone https://github.com/kpcyrd/sn0int.git
sudo sn0int
sudo install -f --path .

echo "-------------------------------------------------------------------"
echo "--------------- sn0int Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://pypi.org/project/harpoon/

# OSINT / Threat Intel CLI tool.

sudo pip install harpoon

# If install failed, run the following 3 lines
# git clone https://github.com/Te-k/harpoon.git
# cd harpoon
# pip3 install .

echo "-------------------------------------------------------------------"
echo "--------------- Harpoon Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://phantomjs.org/

# Headless browser

sudo npm install -g phantomjs

echo "-------------------------------------------------------------------"
echo "--------------- Phantomjs Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/hahwul/XSpear

# Powerfull XSS Scanning and Parameter analysis tool

sudo gem install XSpear

echo "-------------------------------------------------------------------"
echo "--------------- XSpear Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/s1l3nt78/TigerShark

# Multi-Tooled Phishing Framework.

sudo git clone https://github.com/s1l3nt78/TigerShark.git
sudo cd TigerShark
sudo chmod +x install.sh
sudo ./install.sh

echo "-------------------------------------------------------------------"
echo "--------------- TigerShark Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/iojw/socialscan

# Check email address and username availability on online platforms

sudo pip3 install socialscan

echo "-------------------------------------------------------------------"
echo "--------------- SocialScan Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/s0md3v/Corsy

# CORS Misconfiguration Scanner

sudo git clone https://github.com/s0md3v/Corsy
sudo cd Corsy
sudo pip3 install -r requirements.txt

echo "-------------------------------------------------------------------"
echo "--------------- Corsy Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/abdulr7mann/hackerEnv

# hackerEnv is an automation tool that quickly and easily sweep IPs and scan ports, vulnerabilities and exploit them. Then, it hands you an interactive shell for further testing. Also, it generates HTML and docx report

sudo cd /opt/
sudo git clone https://github.com/abdulr7mann/hackerEnv.git
sudo cd /opt/hackerEnv
sudo chmod +x hackerEnv
sudo ln -s /opt/hackerEnv/hackerEnv /usr/local/bin/

echo "-------------------------------------------------------------------"
echo "--------------- HackerEnv Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

# https://github.com/shifty0g/ultimate-nmap-parser

# Parses namp results
# ./ultimate-nmap-parser.sh *.gnmap --summary

git clone https://github.com/Shifty0g/ultimate-nmap-parser/
cd ultimate-nmap-parser/
chmod +x ultimate-nmap-parser.sh
./ultimate-nmap-parser.sh

echo "-------------------------------------------------------------------"
echo "--------------- Nmap Parser Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"



echo "-------------------------------------------------------------------"
echo "--------------- All Tools Installed! Go Break Some Shit! ---------"
echo "-------------------------------------------------------------------"
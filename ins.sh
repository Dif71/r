#!/bin/bash

# Ubuntu 18.04 x64 
# Chrome versi 98.0.4758.80
# Python 3.8

# INSTALL RDP
sudo apt-get update -y
sudo apt-get install xubuntu-core -y
sudo apt-get install x2goserver x2goserver-xsession -y
sudo apt-get install xfce4-terminal -y
sudo apt-get install -y python-urllib3
#sudo update-alternatives --config x-terminal-emulator

# INSTALL PYTHON
sudo apt install python3.8 -y
sudo apt install python3-pip -y
sudo apt-get install python3-tk python3-dev -y
sudo wget https://bootstrap.pypa.io/get-pip.py
sudo python3.8 get-pip.py
sudo pip3.8 install selenium
sudo pip3.8 install selenium-stealth
sudo pip3.8 install pyautogui
sudo pip3.8 install numpy
sudo pip3.8 install bezier
pip3.8 install --upgrade requests

# INSTALL CHROME + DRIVER
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
wget https://chromedriver.storage.googleapis.com/98.0.4758.80/chromedriver_linux64.zip
sudo apt-get install unzip -y
unzip chromedriver_linux64.zip
sudo cp -r chromedriver /usr/bin/
mkdir -p /root/.config/autostart/

# Git
sudo apt-get install git -y

# Rep
git clone https://github.com/Dif71/f.git
sudo cp -r f/.profile /root
sudo cp -r f/google-chrome /opt/google/chrome
sudo cp -r f/bv.desktop /root/.config/autostart/
sudo cp -r f/lightdm.conf /etc/lightdm/
sudo cp -r f/.bashrc  /root

# Bot
git clone https://github.com/Dif71/bv.git
#setsid startx

echo ""
echo -e " == [\e[32mInstalled\e[0m] == "
echo ""

reboot


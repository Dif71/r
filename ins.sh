#!/bin/bash

# Ubuntu 18.04 x64 
# Chrome versi 98.0.4758.80
# Python 3.8

# INSTALL RDP
sudo apt-get update -y
sudo apt-get install xubuntu-core -y
sudo apt-get install x2goserver x2goserver-xsession -y
sudo apt-get install xfce4-terminal -y
sudo update-alternatives --config x-terminal-emulator -y

# INSTALL PYTHON
sudo apt install python3.8
sudo wget https://bootstrap.pypa.io/get-pip.py
sudo python3.8 get-pip.py
sudo pip3.8 install selenium
sudo pip3.8 install selenium-stealth
sudo pip3.8 install pyautogui
sudo pip3.8 install numpy
sudo pip3.8 install bezier

# INSTALL CHROME + DRIVER
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
wget https://chromedriver.storage.googleapis.com/98.0.4758.80/chromedriver_linux64.zip
sudo apt-get install unzip -y
unzip chromedriver_linux64.zip
sudo cp -r chromedriver /usr/bin/

# Git
sudo apt-get install git -y

# Bot
git clone https://github.com/Dif71/bv.git



#/bin/bash

# Load the bash environment
echo Essential AutoInstaller v0.1a
sudo apt-get update
sudo apt-get install vim
sudo apt-get install git
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
wget http://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
sudo dpkg -i skype-ubuntu-precise_4.3.0.37-1_i386.deb
sudo apt-get install -f
sudo apt-get install compiz-plugins
sudo apt-get install compiz-plugins-extra
sudo apt-get install compizconfig-settings-manager
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ~/google-chrome-stable_current_amd64.deb
sudo apt-get install -f
# Remove File after install to save disk space
rm skype-ubuntu-precise_4.30.0.37-1_i386.deb
rm google-chrome-stable_current_amd64.deb

# Clear the screen to make sure all extra text is removed (Google Chrome WILL throw an error but that's ok)
clear

echo Finished Installing Essential Programs!

ccsm

# Clear the screen
clear
echo Done!

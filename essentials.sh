#/bin/bash

# Load the bash environment
echo Essential AutoInstaller v0.1a
sudo apt-get update
sudo apt-get install vim
sudo apt-get install git
clear
while true; do
	read -p "Do you want to install Java (tm)?" yn
	case $yn in
		[Yy]* ) sudo add-apt-repository ppa:webupd8team/java; sudo apt-get update; sudo apt-get install oracle-java8-installer; break;;
		[Nn]* ) exit;;
		* ) echo "Please answer yes or no.";;
	esac
done
wget http://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
if [ ! -f ./skype-ubuntu-precise_4.3.0.37-1_i386.deb ]; then
	clear
	echo "Skype Installer Not Found!"
fi
if [ -f ./skype-ubuntu-precise_4.3.0.37-1_i386.deb ]; then
	sudo dpkg -i ./skype-ubuntu-precise_4.3.0.37-1_i386.deb
	sudo apt-get install -f
	echo "Finished Installing Skype!"
fi

# Install additional packages for compiz
sudo apt-get install compiz-plugins
sudo apt-get install compiz-plugins-extra
sudo apt-get install compizconfig-settings-manager
clear
echo "Installed Compiz Plugins and Settings Manager for Compiz WM"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
if [ ! -f ./google-chrome-stable_current_amd64.deb ]; then
	clear
	echo "Google Chrome installer not found!"
fi
if [ -f ./google-chrome-stable_current_amd64.deb ]; then
	sudo dpkg -i ./google-chrome-stable_current_amd64.deb
	sudo apt-get install -f
	echo "Installed Google Chrome!"
fi
# Remove File after install to save disk space
rm skype-ubuntu-precise_4.30.0.37-1_i386.deb
rm google-chrome-stable_current_amd64.deb

# Clear the screen to make sure all extra text is removed (Google Chrome WILL throw an error but that's ok)
clear

echo Finished Installing Essential Programs!

echo "Please Configure Compiz to your desire."
ccsm

# Update Databases
sudo apt-get update
# Clear the screen
clear
echo Done!

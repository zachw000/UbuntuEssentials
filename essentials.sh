#/bin/bash

# Load the bash environment
echo Essential AutoInstaller v0.1a
sudo apt-get update
sudo apt-get install vim
sudo apt-get install git
clear
while true; do
	read -p "Do you want to install Spotify (r)?" yn
	case $yn in
		[Yy]* ) sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886; echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list; sudo apt-get update; sudo apt-get install spotify-client; break;;
		[Nn]* ) break;;
		* ) echo "Please answer yes or no [y/n].";
	esac
done
clear
while true; do
	read -p "Do you want to install Java (tm)?" yn
	case $yn in
		[Yy]* ) sudo add-apt-repository ppa:webupd8team/java; sudo apt-get update; sudo apt-get install oracle-java8-installer; break;;
		[Nn]* ) break;;
		* ) echo "Please answer yes or no.";
	esac
done

# Install Lua
while true; do
	read -p "Do you want to install Lua (r)?" yn
	case $yn in
		[Yy]* ) wget http://www.lua.org/ftp/lua-5.3.1.tar.gz; tar -zxf lua-5.3.1.tar.gz; rm lua-5.3.1.tar.gz; break;;
		[Nn]* ) break;;
		* ) echo "Please answer yes or no.";
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
while true; do
	read -p "Do you want to install extra compiz packages?" yn
	case $yn in
		[Yy]* ) sudo apt-get install compiz-plugins; sudo apt-get install compiz-plugins-extra;	sudo apt-get install compizconfig-settings-manager; echo "Finished installing settings manager and plugins for Compiz WM."; break;;
		[Nn]* ) echo "Skipping"; break;;
		* ) echo "Please answer yes or no."
	esac
done
clear

# Start google chrome installer
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
rm skype-ubuntu-precise_4.3.0.37-1_i386.deb
rm google-chrome-stable_current_amd64.deb

# Clear the screen to make sure all extra text is removed (Google Chrome WILL throw an error but that's ok)
clear

echo Finished Installing Essential Programs!

# Update Databases
sudo apt-get update

# Clear the screen
clear
echo "Done! All essential programs has been installed."

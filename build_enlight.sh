#!/bin/bash
 
set -e
# Target directory
PREFIX="/usr/local"
 
# List of the needed packages
# To adapt to your needs
PROJECTS="efl emotion_generic_players evas_generic_loaders elementary enlightenment"
 
# Download url
SITE=" http://git.enlightenment.org/core/"
OPT="--prefix=$PREFIX"
 
PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH"
PATH="$PREFIX/bin:$PATH"
LD_LIBRARY_PATH="$PREFIX/lib:$LD_LIBRARY_PATH"
LOG="installe.log"
rm -f $LOG      # Delete precedent log file
touch $LOG      # Create a log file
date >> $LOG    # Add current date
 
# Download and compile each module
for PROJ in $PROJECTS; do
    # Cloning
    if [ ! -d $PROJ ]; then
        git clone $SITE$PROJ.git $PROJ
    fi
    # Go building and installing
    cd $PROJ*
    make clean distclean || true
    ./autogen.sh $OPT
    make
    sudo make install
    cd ..
    sudo ldconfig
    echo $PROJ" is installed" >> $LOG
done
 
#Optionnal Terminology
git clone http://git.enlightenment.org/apps/terminology.git
cd terminology
./autogen.sh $OPT
make
sudo make all install
cd ..
sudo ldconfig
 
# Delete all downloaded files and compile traces
rm -rf e*
 
# Create the menu entry of Enlightenment for gdm, kdm or liqhtdm
sudo ln -s /usr/local/share/xsessions/enlightenment.desktop /usr/share/xsessions/

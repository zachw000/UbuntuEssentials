# Create an install directory
mkdir enlight
cd enlight

#install dependencies
sudo aptitude install \
        make gcc bison flex gawk subversion automake autoconf doxygen\
        check autotools-dev autoconf-archive autopoint libtool gettext \
        libpam0g-dev libfreetype6-dev libpng12-dev zlib1g-dev  libjpeg-dev\
        libdbus-1-dev luajit libluajit-5.1-dev libx11-dev libxcursor-dev\
        libxrender-dev libxrandr-dev libxfixes-dev libxdamage-dev\
        libxcomposite-dev libxss-dev libxp-dev libxext-dev libxinerama-dev
sudo aptitude install \
        libxkbfile-dev libxtst-dev libxcb1-dev libxcb-shape0-dev\
        libxcb-keysyms1-dev libpulse-dev libsndfile1-dev  libudev-dev\
        libblkid-dev libmount-dev libgstreamer1.0-dev libtiff5-dev libgif-dev\
        curl libssl-dev libspectre-dev libpoppler-dev librsvg2-dev\
        libraw-dev libxinerama-dev git libfribidi-dev libcogl-gles2-dev\
        libbullet-dev libgstreamer-plugins-base1.0-dev libvlc-dev
  

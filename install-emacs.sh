#! /bin/bash

##############################################
# Compile and install emacs 24.x from source
# 
# Automates the instructions in:
# http://ubuntuhandbook.org/index.php/2014/10/emacs-24-4-released-install-in-ubuntu-14-04/
#
# The script will extract the source to the current dir
# Therefore, first create and move to a suitable directory
#
###############################################

VERSION="24.5"
FILENAME="emacs-$VERSION.tar.gz"
SRCDIR="emacs-$VERSION"

echo "Attempting to download, compile and install emacs $VERSION"

echo 'Installing dependencies...'

# install build-essential

sudo apt-get install build-essential

# install depencies

sudo apt-get build-dep emacs24

echo 'Downloading the source package'

# Download Emacs 24.4 from the official FTP site

curl -o $FILENAME http://ftp.gnu.org/gnu/emacs/$FILENAME

# Extract the source

tar -xf $FILENAME

echo 'Compiling and installing...'

# Move to the extracted dir

cd $SRCDIR

# Compile and install 

./configure

make 

sudo make install














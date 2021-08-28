#!/bin/bash
cd
mkdir FXServer
cd FXServer
mkdir server
cd server
echo 'Select a build from here: https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/'
read -p "Preferred Build URL:" URL
wget $URL
tar xf fx.tar.xz
rm -rf fx.tar.xz
./run.sh

#!/bin/bash
# create a folder named server in home directory and cd to it
mkdir ~/server && cd "$_"
# this is the link to the latest build from https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/
build_link=$(curl -s https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/ | grep -oP '<a class="panel-block  is-active"[^>]*>' | head -1 | grep -oP 'href="./\K[^"]*')
# download the build
wget -q https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/$build_link
# extract the build
tar xf fx.tar.xz
# remove the tar file
rm fx.tar.xz
# run server the server
./run.sh

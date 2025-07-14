#!/bin/bash

sudo apt install -y libgtk3-perl libmodule-build-perl

cd /tmp
git clone https://github.com/trizen/Linux-DesktopFiles.git
cd Linux-DesktopFiles
perl Build.PL
./Build
./Build test
sudo ./Build install

mkdir -p ~/.local/bin ~/.config/fbmenugen

cd /tmp
git clone https://github.com/trizen/fbmenugen.git
cd fbmenugen
cp fbmenugen ~/.local/bin/
cp schema.pl ~/.config/fbmenugen/

rm -rf /tmp/Linux-DesktopFiles /tmp/fbmenugen

export PATH="$HOME/.local/bin:$PATH"
fbmenugen -g





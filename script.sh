#!/bin/bash

# Exit on error
set -e

echo "Updating packages..."
sudo apt update && sudo apt upgrade -y

echo "Installing Xorg (display server)..."
sudo apt install -y xorg xinit x11-utils

echo "Installing minimal LXQt desktop..."
sudo apt install -y lxqt-core openbox pcmanfm-qt qterminal

echo "Installing optional lightweight extras..."
sudo apt install -y lxappearance lxtask gvfs network-manager-gnome

echo "Creating .xinitrc to use startx with LXQt..."
echo "exec startlxqt" > ~/.xinitrc

echo "LXQt installation complete."
echo "Reboot and log in, then run: startx"

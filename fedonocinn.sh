#!/bin/bash


sudo dnf install cinnamon @base-x
sudo dnf install nemo-fileroller gnome-terminal firefox
sudo dnf install lightdm slick-greeter
sudo dnf install NetworkManager-wifi iwl*
systemctl enable lightdm
systemctl set-default graphical.target
read -p "Reboot? (y/n): " x && [[ "$x" == "y" ]] && sudo reboot

 



















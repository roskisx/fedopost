#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "=== Starting Minimal Fedora Xfce Desktop Installation ==="

# 1. System update
echo "--> Updating system packages..."
dnf update -y

# 2. X-server and basic graphics drivers
echo "--> Installing Xorg and basic graphics drivers..."
dnf install -y xorg-x11-server-Xorg xorg-x11-xinit xorg-x11-drv-libinput mesa-dri-drivers

# 3. Core Xfce packages (Fixed case-sensitivity for exo)
echo "--> Installing core Xfce components..."
dnf install -y xfwm4 xfce4-panel xfdesktop xfce4-session xfce4-settings xfce4-terminal thunar tumbler exo xfce4-whiskermenu-plugin featherpad git

# 4. LightDM display manager
echo "--> Installing and enabling LightDM login manager..."
dnf install -y lightdm-gtk
systemctl set-default graphical.target

# 5. Audio (PipeWire) and network applet integration
echo "--> Installing audio support (PipeWire) and network tray icon..."
dnf install -y pipewire pipewire-pulseaudio network-manager-applet pavucontrol

echo "=========================================================="
echo " Installation complete!"
echo "=========================================================="

# Prompt the user for reboot
read -p "Do you want to reboot the system now? (y/n): " choice

case "$choice" in 
  [yY][eE][sS]|[yY]) 
    echo "Rebooting..."
    sleep 1
    reboot
    ;;
  *)
    echo "Reboot canceled. You can restart the system manually later with 'sudo reboot'."
    ;;
esac

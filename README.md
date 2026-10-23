# Minimal Fedora Xfce/Cinnamon Installer

A simple bash script to install a **bare-minimum Xfce desktop environment or Cinnamon** on a fresh Fedora Minimal / Network Installation (Everything ISO). 

Unlike the official Xfce spin, this script installs only the core components, leaving out pre-installed software like LibreOffice, media players, or games. You get a completely clean slate to build upon.

## What it installs
* **Graphics:** Xorg server, basic graphics drivers, and input drivers.
* **Desktop:** Core Xfce components (`xfwm4`, `xfce4-panel`, `xfdesktop`, `Thunar`, etc.).
* **Display Manager:** LightDM (lightweight login manager).
* **Audio & Network:** PipeWire audio system and the NetworkManager system tray applet.

## Prerequisites
1. Install **Fedora Everything (Netinstall)**.
2. Choose **Minimal Install** during the Anaconda installation setup.
3. Make sure your network connection is active.

## Usage

1. Log into your fresh Fedora minimal command line (TTY).
2. Download the script or clone this repository.
3. Make the script executable:
   ```bash
   chmod +x fedoxfce.sh
   ```
4. Run the script with root privileges:
   ```bash
   sudo ./fedoxfce.sh
   ```

At the end of the installation, the script will ask if you want to reboot. Once rebooted, you will be greeted by the LightDM login screen.

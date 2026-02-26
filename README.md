# Stoat Installer & Updater for Linux

A bash script that installs Stoat along with an updater to make updates fast and automated.

## Requirements
### desktop-file-utils
Debian/Ubuntu
```bash
sudo apt-get install desktop-file-utils
```
Fedora
```bash
sudo dnf install desktop-file-utils
```
Arch
```bash
sudo pacman -S desktop-file-utils
```
openSUSE
```bash
zypper install desktop-file-utils
```

## Installation
Download and run the installer script
```bash
curl -L -o stoat-installer.sh "https://raw.githubusercontent.com/SkylerHope/Stoat-Installer-for-Linux/refs/heads/main/installer.sh" && chmod +x stoat-installer.sh && ./stoat-installer.sh
```
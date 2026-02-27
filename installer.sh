#!/bin/bash

cd
# Download latest Stoat client
curl -L -o latest-stoat.zip "https://github.com/stoatchat/for-desktop/releases/download/v1.3.0/Stoat-linux-x64-1.3.0.zip"
# Download and install updater script
curl -L -o stoat-update.sh "https://raw.githubusercontent.com/SkylerHope/Stoat-Installer-for-Linux/refs/heads/main/updater.sh"
chmod +x stoat-update.sh
sudo mv stoat-update.sh /user/local/bin/stoat-update
# Download icon
curl -L -o logo-stoat.png "https://raw.githubusercontent.com/stoatchat/assets/bd432f2298901a8566a092636eef0c35a3a80fbc/desktop/hicolor/128x128.png"
# Extract downloaded contents
mkdir -p latest-stoat
mv logo-stoat.png ~/latest-stoat/
unzip latest-stoat.zip -d latest-stoat
rm latest-stoat.zip

# Create desktop entry
APP_ICON="~/latest-stoat/logo-stoat.png"
BIN_PATH="~/latest-stoat/Stoat-linux-x64/stoat-desktop"
APP_NAME="Stoat"
DESKTOP_PATH="/usr/share/applications/stoat.desktop"

sudo tee "$DESKTOP_PATH" > /dev/null << EOF
[Desktop Entry]
Version=1.3.0
Type=Application
Name=$APP_NAME
Comment=Stoat is the chat app where you are the main character
Exec=$BIN_PATH
Icon=$APP_ICON
Terminal=False
Categories=Network;InstantMessaging;Chat;
StartupNotify=false
EOF

# Refresh desktop entries
sudo update-desktop-database /usr/share/applications

# Delete the installer script
cd
rm stoat-installer.sh
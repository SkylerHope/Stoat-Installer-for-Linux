#!/bin/bash

cd
curl -L -o latest-stoat.zip "https://github.com/stoatchat/for-desktop/releases/download/v1.3.0/Stoat-linux-x64-1.3.0.zip"
curl -L -o /usr/share/icons/logo-stoat.png "https://raw.githubusercontent.com/stoatchat/assets/bd432f2298901a8566a092636eef0c35a3a80fbc/desktop/icon.png"
mkdir -p latest-stoat
unzip latest-stoat.zip -d latest-stoat
cd latest-stoat && cd Stoat-linux-x64
sudo cp stoat-desktop /usr/local/bin/stoat

APP_ICON="/usr/share/icons/logo-stoat.png"
BIN_PATH="/usr/local/bin/stoat"
APP_NAME="Stoat"
DESKTOP_PATH="/usr/share/applications/stoat.desktop"

cat > "$DESKTOP_PATH" << EOF
[Desktop Entry]
Version=1.3.0
Type=Application
Name=$APP_NAME
Comment=Stoat is the chat app where you are the main character.
Exec=$BIN_PATH
Icon=$APP_ICON
Terminal=False
Categories=Internet;
StartupNotify=true
EOF

cd
rm stoat-installer.sh

update-desktop-database /usr/share/applications
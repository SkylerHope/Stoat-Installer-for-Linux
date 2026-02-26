#!/bin/bash

cd
curl -L -o latest-stoat.zip "https://github.com/stoatchat/for-desktop/releases/download/v1.3.0/Stoat-linux-x64-1.3.0.zip"
curl -L -o /usr/share/icons/logo-stoat.png "https://raw.githubusercontent.com/stoatchat/assets/bd432f2298901a8566a092636eef0c35a3a80fbc/desktop/icon.png"
mkdir -p latest-stoat
unzip latest-stoat.zip -d latest-stoat
cd latest-stoat && cd Stoat-linux-x64
cp stoat-desktop /usr/local/bin/stoat
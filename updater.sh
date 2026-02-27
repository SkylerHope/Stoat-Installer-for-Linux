#!/bin/bash

# Compare current version with latest
current_version="https://github.com/stoatchat/for-desktop/releases/download/v1.3.0/Stoat-linux-x64-1.3.0.zip"
new_version=$(curl -sI https://github.com/stoatchat/for-desktop/releases/download//Stoat-linux-x64-.zip | grep -oP 'download/v//\K[0-9]+\.[0-9]+\.[0-9]+' | grep -oP  'linux-x64-/\K[0-9]+\.[0-9]+\.[0-9]+')
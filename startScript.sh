#!/bin/bash

# Start script for Powder profile OAI_profile

git clone https://github.com/ccskying/PowderFile

if 1 then

sudo uhd_images_downloader
sudo uhd_image_loader --args="type=x300,addr=192.168.40.2"
wget https://codeload.github.com/EttusResearch/uhd/zip/release_003_010_003_000 -O uhd.zip
unzip uhd.zip
sudo cp -Rv uhd-release_003_010_003_000/host/include/uhd/rfnoc /usr/share/uhd/

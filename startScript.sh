#!/bin/bash

# Start script for Powder profile OAI_profile

# Clone the python scripts written before

git clone https://github.com/ccskying/PowderFile

# Only for the pc of X310, we need to run the following command
# Remember to reboot the X310 after new image loaded into its FPGA

if [ $(echo $HOSTNAME | grep "cellsdrl") ]; then
echo "pc"
    # Load image for X310
    sudo uhd_images_downloader
    sudo uhd_image_loader --args="type=x300,addr=192.168.40.2"
    # Fix the missing of xml file
    wget https://codeload.github.com/EttusResearch/uhd/zip/release_003_010_003_000 -O uhd.zip
    unzip uhd.zip
    sudo cp -Rv uhd-release_003_010_003_000/host/include/uhd/rfnoc /usr/share/uhd/
fi

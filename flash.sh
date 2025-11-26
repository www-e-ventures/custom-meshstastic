#!/bin/bash

# Stop on first error
set -e

echo "--------------------------------------"
echo "   Flashing Meshtastic for T-Deck     "
echo "--------------------------------------"

pio run -e t-deck-tft --target erase
#the below flashes into app partition of ESP32
#logic, menus, drivers, text
pio run -e t-deck-tft --target upload
#the below flashes the filesystem partition of ESP32
#and takes everything inside project's data folder and crreates a filesystem image from it and uploads it
#images ( boot.png ), fonts ( .vlw ), sounds ( .wav ) etc and web interfaces such as .html, .css, .js
pio run -e t-deck-tft --target uploadfs

echo "--------------------------------------"
echo "   Flash Complete!"
#echo "----opening logs----------------------------------"
echo "--------------------------------------"
#pio device monitor -e t-deck-tft
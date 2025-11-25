#!/bin/bash

# Stop on first error
set -e

echo "--------------------------------------"
echo "   Flashing Meshtastic for T-Deck     "
echo "--------------------------------------"


pio run -e t-deck-tft --target upload
pio run -e t-deck-tft --target uploadfs

# pio device monitor

echo "--------------------------------------"
echo "   Flash Complete!                    "
echo "--------------------------------------"

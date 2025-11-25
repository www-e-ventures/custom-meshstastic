#!/bin/bash

# Stop on first error
set -e

echo "--------------------------------------"
echo "   Flashing Meshtastic for T-Deck     "
echo "--------------------------------------"


pio run -e t-deck --target upload

# pio device monitor

echo "--------------------------------------"
echo "   Flash Complete!                    "
echo "--------------------------------------"
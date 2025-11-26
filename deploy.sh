#!/bin/bash

# Stop on first error
set -e

# Define the environment once to avoid typos
ENV="t-deck-tft"

echo "--------------------------------------"
echo "   DEPLOYING MESHTASTIC FOR T-DECK    "
echo "   Environment: $ENV                  "
echo "--------------------------------------"

echo "[1/5] Cleaning previous builds..."
pio run -e $ENV --target clean

echo "[2/5] Building firmware..."
pio run -e $ENV

echo "[3/5] Erasing ESP32 Flash..."
pio run -e $ENV --target erase

echo "[4/5] Uploading Firmware..."
pio run -e $ENV --target upload

echo "[5/5] Uploading assets via image of Filesystem (LittleFS)..."
pio run -e $ENV --target uploadfs

echo "--------------------------------------"
echo "   SUCCESS! DEPLOYMENT COMPLETE.      "
echo "--------------------------------------"

# echo "Opening Serial Monitor..."
# pio device monitor -e $ENV

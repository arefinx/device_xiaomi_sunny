#!/bin/bash

# Set repository paths
KD="kernel/xiaomi/sunny"
VD="vendor/xiaomi/sunny"
FD="vendor/xiaomi/sunny-firmware"

# Message goes here
echo "In a galaxy far, far away..."
sleep 2
echo "A long time ago..."
sleep 2
echo "Adding things necessary..."
sleep 2
echo "May the Force be with you!"

# Cloning repositories
if [ -d "$KD" ]; then
  echo "The Kernel folder already exists. Skipping cloning."
else
  git clone https://github.com/arefinx/kernel_xiaomi_sunny.git $KD
fi

if [ -d "$VD" ]; then
  echo "The Vendor folder already exists. Skipping cloning."
else
  git clone https://github.com/arefinx/vendor_xiaomi_sunny.git $VD
fi

if [ -d "$VD" ]; then
  echo "The Firmware folder already exists. Skipping cloning."
else
  git clone https://gitlab.com/asarefin/vendor_xiaomi_sunny-firmware.git $FD
fi

#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common GenesisOS stuff.
$(call inherit-product, vendor/genesis/config/common_full_phone.mk)
GENESIS_OFFICIAL := true

# Inherit from sunny device
$(call inherit-product, device/xiaomi/sunny/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := genesis_sunny
PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := sunny
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2101K7AG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

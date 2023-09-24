#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true

# Inherit from sunny device
$(call inherit-product, device/xiaomi/sunny/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_sunny
PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := sunny
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2101K7AG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

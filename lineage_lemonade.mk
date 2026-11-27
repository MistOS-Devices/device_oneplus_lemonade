#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonade device
$(call inherit-product, device/oneplus/lemonade/device.mk)

# Inherit some common Mist stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Mist Specific Flags
MISTOS_MAINTAINER := Spidey
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
MIST_BUILD_TYPE := OFFICIAL

PRODUCT_NAME := lineage_lemonade
PRODUCT_DEVICE := lemonade
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2115

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus9-user 14 UKQ1.230924.001 R.209d31b_1-39324b release-keys" \
    BuildFingerprint=OnePlus/OnePlus9/OnePlus9:14/UKQ1.230924.001/R.209d31b_1-39324b:user/release-keys \
    DeviceName=OnePlus9 \
    DeviceProduct=OnePlus9 \
    SystemDevice=OnePlus9 \
    SystemName=OnePlus9

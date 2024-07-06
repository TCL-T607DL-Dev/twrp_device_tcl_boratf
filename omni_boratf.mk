#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from boratf device
$(call inherit-product, device/tcl/boratf/device.mk)

PRODUCT_DEVICE := boratf
PRODUCT_NAME := omni_boratf
PRODUCT_BRAND := TCL
PRODUCT_MANUFACTURER := TCL
PRODUCT_MODEL := T607DL

PRODUCT_GMS_CLIENTID_BASE := android-tcl

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_boratf-user 12 SP1A.210812.016 UHB9 release-keys"

BUILD_FINGERPRINT := None

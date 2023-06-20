#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RMX3191 device
$(call inherit-product, device/realme/RMX3191/device.mk)

PRODUCT_DEVICE := RMX3191
PRODUCT_NAME := omni_RMX3191
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3191
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_RMX3191-eng 16.1.0 RQ1A.210205.004 eng.runner.20230614.232635 test-keys"

BUILD_FINGERPRINT := realme/fox_RMX3191/RMX3191:16.1.0/RQ1A.210205.004/runner06142317:eng/test-keys

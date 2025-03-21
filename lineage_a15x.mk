#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/samsung/a15x/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_a15x
PRODUCT_DEVICE := a15x
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-A156

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a15x-user 14 UP1A.231005.007 A156MUBS5BXL3 release-keys"

BUILD_FINGERPRINT := Samsung/a15xub/a15x:14/UP1A.231005.007/A156MUBS5BXL3:user/release-keys

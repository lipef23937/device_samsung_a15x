#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a15x

# Asserts
TARGET_OTA_ASSERT_DEVICE := a15x

#HIDL
ODM_MANIFEST_MERLINNFC_FILES := $(DEVICE_PATH)/configs/manifest/manifest.xml

# Display
TARGET_SCREEN_DENSITY := 396

# Kernel
TARGET_KERNEL_CONFIG := a15x_defconfig

# Inherit the proprietary files
include vendor/samsung/a15x/BoardConfigVendor.mk

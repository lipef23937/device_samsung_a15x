#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a15x

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_WIDTH :=2340
TARGET_SCREEN_HEIGHT := 1080

# Firmware
RECOVERY_TS_FW_PATH := vendor/samsung/a15x/proprietary/vendor/firmware

PRODUCT_COPY_FILES += \
    $(RECOVERY_TS_FW_PATH)/novatek_ts_g6_fw.bin:recovery/root/vendor/firmware/novatek_ts_g6_fw.bin \
    $(RECOVERY_TS_FW_PATH)/novatek_ts_g6_mp.bin:recovery/root/vendor/firmware/novatek_ts_g6_mp.bin \
    $(RECOVERY_TS_FW_PATH)/novatek_ts_g6_mp.bin:recovery/root/vendor/firmware/novatek_ts_g6_mp.bin \
    $(RECOVERY_TS_FW_PATH)/novatek_ts_72d_fw.bin:recovery/root/vendor/firmware/novatek_ts_72d_fw.bin \
    $(RECOVERY_TS_FW_PATH)/novatek_ts_72d_mp.bin:recovery/root/vendor/firmware/novatek_ts_72d_mp.bin

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    com.android.nfc_extras \
    NfcNci \
    Tag

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage


# Rootdir
PRODUCT_PACKAGES += \
    init.project.rc

# Secure Element
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0.vendor \
    android.hardware.secure_element@1.1.vendor \
    android.hardware.secure_element@1.2.vendor

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Shipping API Level
PRODUCT_SHIPPING_API_LEVEL := 33

# SKU
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/build_ss_vendor.prop:$(TARGET_COPY_OUT_VENDOR)/build_ss_vendor.prop

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/a15x/a15x-vendor.mk)

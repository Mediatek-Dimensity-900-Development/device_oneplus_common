#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Audio
PRODUCT_PACKAGES += \
    android.hardware.bluetooth.audio@2.0-impl

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_PACKAGES += \
    libtinycompress \
    libtinyxml \
    tinymix
    
# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
    
# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.mediatek
    
# Inherit the proprietary files
$(call inherit-product, vendor/oneplus/mt6877-common/mt6877-common-vendor.mk)

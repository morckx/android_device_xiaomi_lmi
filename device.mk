#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_USES_PREBUILT_KERNEL := true

# Fingerprint
TARGET_HAVE_FOD := true

# Inherit from xiaomi sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 29

# Device parts
PRODUCT_PACKAGES += \
    DeviceParts

# Kernel
NEED_KERNEL_MODULE_VENDOR_OVERLAY := true
ifeq ($(TARGET_USES_PREBUILT_KERNEL), true)
$(call inherit-product, device/xiaomi/lmi-kernel/kernel.mk)
endif

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/lmi/lmi-vendor.mk)

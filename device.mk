#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Fingerprint
TARGET_HAS_FOD := true

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

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

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/apollo/,$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_apollo) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/cas/,$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_cas) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/cmi/,$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_cmi) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/lmi/,$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lmi) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/umi/,$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_umi)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml

# Rootdir
PRODUCT_PACKAGES += \
    init.device.rc

# Sensors
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/sensors/,$(TARGET_COPY_OUT_VENDOR)/etc/sensors)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/mikona_a/mikona_a-vendor.mk)

#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/mikona_a

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_mikona_a
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_mikona_a

# Kernel
TARGET_KERNEL_CONFIG := vendor/mikona_defconfig

# OTA assert
APOLLO_ASSERT := apollo,apollopro
CAS_ASSERT := cas
CMI_ASSERT := cmi
LMI_ASSERT := lmi,lmipro
UMI_ASSERT := umi
TARGET_OTA_ASSERT_DEVICE := mikona_a,$(APOLLO_ASSERT),$(CAS_ASSERT),$(CMI_ASSERT),$(LMI_ASSERT),$(UMI_ASSERT)

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/mikona_a/BoardConfigVendor.mk

#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/amlogic/g12-common/BoardConfigCommon.mk

DEVICE_PATH := device/amlogic/x96w

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := x96w

## Kernel
TARGET_DTB_NAME := gxl_p281_1g gxl_p281_2g
TARGET_KERNEL_CONFIG := gxl_defconfig

# SEPolicy (ew)
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Wi-Fi
WIFI_MODULE := multiwifi

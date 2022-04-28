#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/amlogic/gx-common/BoardConfigCommon.mk

DEVICE_PATH := device/amlogic/q6x

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := q6x

## Display
GPU_TYPE := mali450
GPU_ARCH := utgard
MALI_GPU_VARIANT := utgard
MALI_DRV_VERSION := r10p1

## Kernel
TARGET_DTB_NAME := gxl_p281_1g gxl_p281_2g
TARGET_KERNEL_CONFIG := gxl_defconfig

# SEPolicy (ew)
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Wi-Fi
WIFI_MODULE := multiwifi

#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/amlogic/gx-common/BoardConfigCommon.mk

DEVICE_PATH := device/amlogic/q6x

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := q6x

## Kernel
TARGET_DTB_NAME := gxl_p281_1g gxl_p281_2g

## Partitions
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 134217728
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USES_PRODUCTIMAGE := true
TARGET_COPY_OUT_PRODUCT := product

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Wi-Fi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_icomm
BOARD_WLAN_DEVICE := icomm
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_icomm
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/g16

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := gxl_p212

TARGET_BOARD_PLATFORM := gxl

# GPU
TARGET_AMLOGIC_GPU_ARCH := utgard

## Kernel
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
TARGET_DTB_NAME := gxl_p212_1g gxl_p212_2g

# Partitions
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 134217728
TARGET_COPY_OUT_PRODUCT := product
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# SOC
TARGET_AMLOGIC_SOC := gxl

## Wi-Fi
BOARD_WLAN_DEVICE := realtek
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
WIFI_DRIVER_SOCKET_IFACE := wlan0
PRODUCT_CFI_INCLUDE_PATHS += hardware/realtek/wlan/wpa_supplicant_8_lib

## Common Tree
include device/amlogic/gx-common/BoardConfigCommon.mk

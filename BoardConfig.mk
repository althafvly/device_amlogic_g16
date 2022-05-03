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

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Wi-Fi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_multi
BOARD_WLAN_DEVICE := iComm
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_multi
MULTI_WIFI_SUPPORT := true
WIFI_DRIVER_FW_PATH_PARAM := "/vendor/etc/wifi/ssv6051/"
WIFI_DRIVER_MODULE_PATH := /vendor/lib/modules/ssv6051.ko
WIFI_DRIVER_MODULE_NAME := ssv6051

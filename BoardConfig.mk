#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/amlogic/g12-common/BoardConfigCommon.mk

DEVICE_PATH := device/amlogic/x96w

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := x96w

## DTB
TARGET_DTB_NAME := gxl_p281_1g gxl_p281_2g

## Wi-Fi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_icomm
BOARD_WLAN_DEVICE := ssv6051
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_icomm
WIFI_DRIVER_MODULE_PATH := /vendor/lib/modules/ssv6051.ko
WIFI_DRIVER_MODULE_NAME := ssv6051
WIFI_DRIVER_MODULE_ARG  := "stacfgpath=/vendor/etc/wifi/ssv6051/ssv6051-wifi.cfg"
WPA_SUPPLICANT_VERSION := VER_0_8_X

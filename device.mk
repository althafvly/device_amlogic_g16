#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/g16

$(call inherit-product, vendor/amlogic/g16/g16-vendor.mk)

## Bluetooth
BOARD_HAVE_BLUETOOTH_RTK_TV := true
include hardware/realtek/rtkbt/rtkbt.mk

## Factory
PRODUCT_HOST_PACKAGES += \
    aml_image_packer

## Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

## Kernel Modules
PRODUCT_PACKAGES += \
    8822bs

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Common Tree
$(call inherit-product, device/amlogic/gx-common/gx.mk)

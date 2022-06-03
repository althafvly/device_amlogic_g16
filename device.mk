#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/q6x

$(call inherit-product, $(SRC_TARGET_DIR)/product/go_defaults_common.mk)

$(call inherit-product, vendor/amlogic/q6x/q6x-vendor.mk)

$(call inherit-product, device/amlogic/gx-common/gx.mk)

## Factory
PRODUCT_HOST_PACKAGES += \
    aml_image_packer

# Wi-Fi
PRODUCT_CFI_INCLUDE_PATHS += \
    hardware/amlogic/kernel-modules/icomm/wpa_supplicant_8_lib

PRODUCT_PACKAGES += \
    ssv6051

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc \
    hardware/amlogic/kernel-modules/icomm/ssv6051/ssv6051-wifi.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/ssv6051/ssv6051-wifi.cfg \
    hardware/amlogic/kernel-modules/icomm/ssv6051/image/ssv6051-sw.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/ssv6051/ssv6051-sw.bin

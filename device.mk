#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/q6x

$(call inherit-product, device/amlogic/gx-common/gx.mk)

## Factory
PRODUCT_HOST_PACKAGES += \
    aml_image_packer

# Wi-Fi
WIFI_MODULE := multiwifi

PRODUCT_PACKAGES += \
    ssv6051

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc \
    hardware/amlogic/wifi/multi_wifi/android.hardware.wifi@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.wifi@1.0-service.rc

include hardware/amlogic/wifi/configs/wifi.mk

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

# Inherit temp DNM configuration
$(call inherit-product, $(LOCAL_PATH)/temp.mk)

# Wi-Fi
PRODUCT_PACKAGES += \
    ssv6051

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

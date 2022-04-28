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
PRODUCT_PACKAGES += \
    wpa_cli \
    ssv6051 \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc \
    hardware/amlogic/wifi/multi_wifi/android.hardware.wifi@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.wifi@1.0-service.rc \
    hardware/amlogic/wifi/multi_wifi/config/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    hardware/amlogic/wifi/multi_wifi/config/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant.conf \
    hardware/amlogic/wifi/multi_wifi/config/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    hardware/amlogic/wifi/multi_wifi/config/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    hardware/wifi/icomm/drivers/ssv6xxx/ssv6051/image/ssv6051-sw.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/ssv6051/ssv6051-sw.bin \
    hardware/wifi/icomm/drivers/ssv6xxx/ssv6051/ssv6051-wifi.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/ssv6051/ssv6051-wifi.cfg

#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/amlogic/x96w

ifeq ($(TARGET_DEVICE), x96w)

include $(call all-makefiles-under,$(LOCAL_PATH))

include external/wpa_supplicant_8/wpa_supplicant/wpa_supplicant_conf.mk

endif

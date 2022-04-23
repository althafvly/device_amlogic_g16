#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

FACTORY_PATH := device/amlogic/q6x/factory

PRODUCT_UPGRADE_OUT := $(PRODUCT_OUT)/upgrade
PACKAGE_CONFIG_FILE := $(PRODUCT_UPGRADE_OUT)/image.cfg
AML_IMAGE_TOOL := $(HOST_OUT_EXECUTABLES)/aml_image_packer$(HOST_EXECUTABLE_SUFFIX)

INSTALLED_AML_UPGRADE_PACKAGE_TARGET := $(PRODUCT_OUT)/aml_upgrade_package.img

define aml-symlink-file
	$(hide) ln -sf $(shell readlink -f $(1)) $(PRODUCT_UPGRADE_OUT)/$(strip $(if $(2), $(2), $(notdir $(1))))
endef

NEEDED_IMAGES := \
    boot.img \
    recovery.img \
    dtbo.img \
    vbmeta.img \
    odm.img \
    product.img \
    system.img \
    vendor.img

$(INSTALLED_AML_UPGRADE_PACKAGE_TARGET): $(addprefix $(PRODUCT_OUT)/,$(NEEDED_IMAGES)) $(AML_IMAGE_TOOL)
	$(hide) mkdir -p $(PRODUCT_UPGRADE_OUT)
ifeq ("$(wildcard $(FACTORY_PATH)/u-boot.bin)","")
	$(error "no u-boot.bin found in $(FACTORY_PATH)")
else
	$(hide) $(call aml-symlink-file, $(FACTORY_PATH)/u-boot.bin)
endif
	$(hide) $(call aml-symlink-file, $(FACTORY_PATH)/u-boot.bin.sd.bin)
	$(hide) $(call aml-symlink-file, $(FACTORY_PATH)/u-boot.bin.usb.bl2)
	$(hide) $(call aml-symlink-file, $(FACTORY_PATH)/u-boot.bin.usb.tpl)
	$(hide) $(call aml-symlink-file, $(PRODUCT_OUT)/logo.img)
	$(hide) $(call aml-symlink-file, $(FACTORY_PATH)/aml_sdc_burn.ini)
	$(hide) $(call aml-symlink-file, $(FACTORY_PATH)/image.cfg)
	$(hide) $(call aml-symlink-file, $(FACTORY_PATH)/platform.conf)
	$(hide) $(call aml-symlink-file, $(PRODUCT_OUT)/boot.img)
	$(hide) $(call aml-symlink-file, $(PRODUCT_OUT)/recovery.img)
	$(hide) $(call aml-symlink-file, $(INSTALLED_2NDBOOTLOADER_TARGET), dtb.img)
	$(hide) $(call aml-symlink-file, $(PRODUCT_OUT)/dtbo.img)
	$(hide) $(call aml-symlink-file, $(PRODUCT_OUT)/odm.img)
	$(hide) $(call aml-symlink-file, $(PRODUCT_OUT)/product.img)
	$(hide) $(call aml-symlink-file, $(PRODUCT_OUT)/system.img)
	$(hide) $(call aml-symlink-file, $(PRODUCT_OUT)/vendor.img)
	$(hide) $(call aml-symlink-file, $(PRODUCT_OUT)/vbmeta.img)
	$(hide) $(AML_IMAGE_TOOL) -r $(PACKAGE_CONFIG_FILE) $(PRODUCT_UPGRADE_OUT)/ $@
	$(hide) rm -rf $(PRODUCT_UPGRADE_OUT)
	$(hide) echo " $@ created"

.PHONY: aml_upgrade
aml_upgrade: $(INSTALLED_AML_UPGRADE_PACKAGE_TARGET)

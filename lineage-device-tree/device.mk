#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    log_to_csv.sh \
    loading.sh \
    para.sh \
    total.sh \
    init.insmod.sh \

PRODUCT_PACKAGES += \
    fstab.BF6EU \
    init.BF6.rc \
    init.BF6.usb.rc \
    init.BF6BWOR.rc \
    init.BF6BWOR.usb.rc \
    init.BF6ETEC.rc \
    init.BF6ETEC.usb.rc \
    init.BF6ETECN2.rc \
    init.BF6ETECN2.usb.rc \
    init.BF6EU.rc \
    init.BF6EU.usb.rc \
    init.BF6KESF.rc \
    init.BF6KESF.usb.rc \
    init.BF6RU.rc \
    init.BF6RU.usb.rc \
    init.BF6ZAVC.rc \
    init.BF6ZAVC.usb.rc \
    init.P662L.rc \
    init.P662L.usb.rc \
    init.S663L.rc \
    init.S663L.usb.rc \
    init.S663LC.rc \
    init.S663LC.usb.rc \
    init.S663LN.rc \
    init.S663LN.usb.rc \
    init.X6516.rc \
    init.X6516.usb.rc \
    init.cali.rc \
    init.factorytest.rc \
    init.ram.rc \
    init.s9863a1h10.rc \
    init.s9863a1h10.usb.rc \
    init.s9863a1h10_go.rc \
    init.s9863a1h10_go.usb.rc \
    init.s9863a1h10_go_32b.rc \
    init.s9863a1h10_go_32b.usb.rc \
    init.storage.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.BF6EU:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.BF6EU

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/tecno/TECNO-BF6/TECNO-BF6-vendor.mk)

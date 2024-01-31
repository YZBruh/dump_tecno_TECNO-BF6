#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from TECNO-BF6 device
$(call inherit-product, device/tecno/TECNO-BF6/device.mk)

PRODUCT_DEVICE := TECNO-BF6
PRODUCT_NAME := lineage_TECNO-BF6
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO BF6
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="BF6-user 12 SP1A.210812.001 280 release-keys"

BUILD_FINGERPRINT := TECNO/BF6-OP/TECNO-BF6:12/SP1A.210812.001/230111V280:user/release-keys

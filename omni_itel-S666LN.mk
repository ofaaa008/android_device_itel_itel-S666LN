#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from itel-S666LN device
$(call inherit-product, device/itel/S666LN/device.mk)

PRODUCT_DEVICE := S666LN
PRODUCT_NAME := twrp_S666LN
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel S666LN
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-itel

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_s666ln_ma66b-user 12 SP1A.210812.016 568108 release-keys"

BUILD_FINGERPRINT := Itel/S666LN-OP/itel-S666LN:12/SP1A.210812.016/240322V1005:user/release-keys

#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from itel-S666LN device
$(call inherit-product, device/itel/itel-S666LN/device.mk)

PRODUCT_DEVICE := itel-S666LN
PRODUCT_NAME := omni_itel-S666LN
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel S666LN
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-itel

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_s666ln_ma66b-user 12 SP1A.210812.016 568108 release-keys"

BUILD_FINGERPRINT := Itel/S666LN-OP/itel-S666LN:12/SP1A.210812.016/240322V1005:user/release-keys

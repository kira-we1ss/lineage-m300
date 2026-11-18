#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

TARGET_BOOT_ANIMATION_RES := 640

$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_DEVICE := M300
PRODUCT_NAME := lineage_M300
PRODUCT_BRAND := HIBYDIGITAL
PRODUCT_MODEL := M300
PRODUCT_MANUFACTURER := HiBy

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="M300-user 13 TKQ1.221013.002 eng.HiBy.20250418.122933 dev-keys"

BUILD_FINGERPRINT := HIBYDIGITAL/M300/M300:13/TKQ1.221013.002/eng.HiBy.20250418.122933:user/dev-keys

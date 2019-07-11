#
# Copyright (C) 2016 The CyanogenMod Project
#               2017-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common PEX stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

#Definitions
IS_GO_VERSION := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_GAPPS_ARCH := arm64
TARGET_MINIMAL_APPS := false
#CUSTOM_BUILD_TYPE := OFFICIAL

# Boot Animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOT_ANIMATION_RES := 720

# Inherit from rolex device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := rolex
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi 4A
PRODUCT_NAME := aosp_rolex

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := rolex

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="rolex" \
    PRODUCT_NAME="rolex" \
    PRIVATE_BUILD_DESC="rolex-user 7.1.2 N2G47H V9.2.6.0.NCCMIEK release-keys"

BUILD_FINGERPRINT := Xiaomi/rolex/rolex:7.1.2/N2G47H/V9.2.6.0.NCCMIEK:user/release-keys

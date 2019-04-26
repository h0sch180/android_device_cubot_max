#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := device/CUBOT/MAX

# Inherit some common Lineage OS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
# Use this to add NOTE_S to CM's lunch command menu
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/CUBOT/MAX/lineage_MAX.mk)

# Inherit device configuration
#$(call inherit-product, $(LOCAL_PATH)/device_MAX.mk)
#$(call inherit-product-if-exists, vendor/CUBOT/MAX/MAX-vendor.mk)

# Device branding
PRODUCT_RELEASE_NAME := MAX
PRODUCT_DEVICE := MAX
PRODUCT_NAME := lineage_MAX
PRODUCT_BRAND := CUBOT
PRODUCT_MANUFACTURER := CUBOT
PRODUCT_MODEL := CUBOT MAX

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=CUBOT/x6069_cubot_5365u/x6069_cubot_5365u:6.0/MRA58K/1473658184:user/release-keys \
PRIVATE_BUILD_DESC="x6069_cubot_5365u-user 6.0 MRA58K 1495446625 release-keys"

# SuperUser
WITH_SU := false
WITH_ROOT := false

PRODUCT_GMS_CLIENTID_BASE := android-google

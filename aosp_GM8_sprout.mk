#
# Copyright (C) 2018 The LineageOS Project
#
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

# Inherit some common PixelExperience stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Official
export CUSTOM_BUILD_TYPE=OFFICIAL
TARGET_GAPPS_ARCH := arm64

# Inherit from GM8_sprout device
$(call inherit-product, device/google/GM8_sprout/device.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BRAND := Google
PRODUCT_MODEL := GM 8
PRODUCT_DEVICE := GM8_sprout
PRODUCT_MANUFACTURER := Google
PRODUCT_NAME := aosp_GM8_sprout

PRODUCT_GMS_CLIENTID_BASE := android-google

TARGET_VENDOR_PRODUCT_NAME := GM8_sprout

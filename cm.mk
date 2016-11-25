#
# Copyright 2015 The CyanogenMod Project
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

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from kenzo device
$(call inherit-product, device/leeco/zl1/device.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := LeEco
PRODUCT_BRAND := LeEco
PRODUCT_DEVICE := zl1
PRODUCT_NAME := cm_zl1
PRODUCT_MANUFACTURER := LeMobile
PRODUCT_MODEL := LEX727
TARGET_VENDOR := LeEco

PRODUCT_GMS_CLIENTID_BASE := android-leeco

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=LeEco/ZL1_NA/le_zl1:6.0.1/WEXNAOP5801911011S/letv11010404:user/release-keys \
    PRIVATE_BUILD_DESC="le_zl1-user 6.0.1 WEXNAOP5801911011S eng.letv.20161101.040050 release-keys"
endif

#
# Copyright (C) 2018 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from X01AD device
$(call inherit-product, device/asus/X01AD/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
-include vendor/lineage-priv/keys/keys.mk

TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USE_GOOGLE_TELEPHONY := true

BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Matrixx
MATRIXX_BUILD_TYPE := OFFICIAL
MATRIXX_MAINTAINER := AssunZain
MATRIXX_CHIPSET := SDM632
MATRIXX_BATTERY := 4000mAh
MATRIXX_DISPLAY := 1520x720
TARGET_ENABLE_BLUR := true
WITH_GMS := true

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Device identifiers.
PRODUCT_NAME := lineage_X01AD
PRODUCT_DEVICE := X01AD
PRODUCT_MANUFACTURER := asus
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01AD

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=X01A_1 \
    PRODUCT_NAME=X01A_1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8953_64-user 10 WW_Phone-202005071625 17.2018.2004.31-20200507 release-keys"

BUILD_FINGERPRINT := "asus/WW_X01AD/ASUS_X01A_1:10/WW_Phone-202005071625/17.2018.2004.31-20200507:user/release-keys"

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

# Inherit from X01AD device
$(call inherit-product, device/asus/X01AD/device.mk)

# Inherit some common Miku UI stuff.
$(call inherit-product, vendor/miku/build/product/miku_product.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Maintainer
MIKU_MASTER := AssunZain

TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifiers.
PRODUCT_NAME := miku_X01AD
PRODUCT_DEVICE := X01AD
PRODUCT_MANUFACTURER := asus
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01AD

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=X01A_1 \
    PRODUCT_NAME=X01A_1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230705.001.A1 10217028 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ3A.230805.001/10316531:user/release-keys
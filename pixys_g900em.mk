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

# Inherit from g900em device
$(call inherit-product, device/lge/g900em/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/pixys/config/common_full_phone.mk)
$(call inherit-product, vendor/pixys/CarrierSettings/config.mk)

# PixysOS Properties
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
#TARGET_SUPPORT_APEX := true
TARGET_INCLUDE_STOCK_ARCORE := true

PRODUCT_NAME := pixys_g900em
PRODUCT_DEVICE := g900em
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG Velvet 5G

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=caymanlm \
    PRODUCT_NAME=caymanlm \
    PRIVATE_BUILD_DISC="caymanlm 10 QKQ1.200308.002 2034018410e9f release-keys"

BUILD_FINGERPRINT := "lge/caymanlm/caymanlm:10/QKQ1.200308.002/2034018410e9f:user/release-keys"

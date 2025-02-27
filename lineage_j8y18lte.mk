# Copyright (C) 2017-2020 The LineageOS Project
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


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := j8y18lte

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, build/target/product/embedded.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/j8y18lte/device_j8y18lte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j8y18lte
PRODUCT_NAME := lineage_j8y18lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := j8y18lte
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="j8y18ltedd-user 10 QP1A.190711.020 J810GDDU3CTG3 release-keys"

#BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/j8y18ltedd/j8y18lte:10/QP1A.190711.020/J810GDDU3CTG3:user/release-keys

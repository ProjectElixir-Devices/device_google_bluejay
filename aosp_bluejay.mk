#
# Copyright 2021 The Android Open-Source Project
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

TARGET_DISABLE_EPPE := true

# Use scudo
PRODUCT_USE_SCUDO := true

$(call inherit-product, device/google/gs101/aosp_common.mk)
$(call inherit-product, device/google/bluejay/device-bluejay.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/bluejay/device-lineage.mk)

# Inherit some common Elixir stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# PixelParts
include packages/apps/PixelParts/device.mk

PRODUCT_NAME := aosp_bluejay
PRODUCT_DEVICE := bluejay
PRODUCT_MODEL := Pixel 6a
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

# Keep the VNDK APEX in /system partition for REL branches as these branches are
# expected to have stable API/ABI surfaces.
ifneq (REL,$(PLATFORM_VERSION_CODENAME))
  PRODUCT_PACKAGES += com.android.vndk.current.on_vendor
endif

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

# OFFICIAL Stuff
ELIXIR_BUILD_TYPE := OFFICIAL
BUILD_USERNAME := Elixir
BUILD_HOSTNAME := Elixir

WITH_GMS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_FACE_UNLOCK_SUPPORTED := false

# AOSP Recovery
TARGET_USES_AOSP_RECOVERY := true

BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 14 UP1A.231005.007 10754064 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:14/UP1A.231005.007/10754064:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)

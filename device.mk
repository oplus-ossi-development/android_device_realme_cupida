#
# Copyright (C) 2020 Android Open Source Project
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
#

DEVICE_PATH := device/oplus/cupida

# Inherit from ossi device
$(call inherit-product, device/oplus/mt6893-common/common.mk)

# Inherit several Android Go Configurations (Beneficial for everyone, even on non-Go devices)
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayCupida \
    SettingsProviderOverlayCupida \
    WifiOverlayCupida

# RealmeParts
PRODUCT_PACKAGES += \
    DeviceSettingsOverlayRM

# Inherit from vendor blobs
$(call inherit-product, vendor/oplus/cupida/cupida-vendor.mk)

#
# Copyright (C) 2021 Android Open Source Project
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

# Inherit from oplus mt6893-common
include device/oplus/mt6893-common/BoardConfigCommon.mk


TARGET_2ND_ARCH_VARIANT := armv8-2a

# Assertation
TARGET_OTA_ASSERT_DEVICE := cupida,RMX3031,RMX3033

# Kernel
TARGET_KERNEL_CONFIG := cupida_defconfig
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# Init
TARGET_INIT_VENDOR_LIB ?= //$(DEVICE_PATH):init_cupida
TARGET_RECOVERY_DEVICE_MODULES ?= init_cupida

# Call proprietary blob setup
include vendor/oplus/cupida/BoardConfigVendor.mk

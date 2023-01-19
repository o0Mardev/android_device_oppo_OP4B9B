#
# Copyright 2020 The Android Open Source Project
# Copyright (C) 2020 The LineageOS Project
# Copyright (C) 2013-2020 OmniROM
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

# Device path

LOCAL_PATH := device/oppo/CPH2021

# system-as-root (SAR), OTA Assert

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TARGET_OTA_ASSERT_DEVICE := CPH2021

# Architecture:
# Note: ro.product.cpu.abi and ro.product.cpu.abi2 are obsolete,
# use ro.product.cpu.abilist instead.

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi

# Bootloader

TARGET_BOOTLOADER_BOARD_NAME := mt6771
TARGET_BOARD_PLATFORM_GPU := Mali-G72 MP3
TARGET_NO_BOOTLOADER := true

# Kernel

BOARD_PAGE_SIZE := 2048
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x14f88000
BOARD_SECOND_OFFSET := 0xbff88000
BOARD_TAGS_OFFSET := 0x13f88000
BOARD_DTB_OFFSET := 0x13f88000
#BOARD_RECOVERY_DTBO_SIZE := 716448
#BOARD_RECOVERY_DTBO_OFFSET := 43454464
BOARD_HEADER_SIZE := 1660

BOARD_HASH_TYPE := sha1

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive

#BOARD_INCLUDE_RECOVERY_DTBO := true
#BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/dtb.img


TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_BOOTIMG_HEADER_VERSION := 2

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x14f88000 --second_offset 0xbff88000 --tags_offset 0x13f88000 --dtb $(TARGET_PREBUILT_DTB) --dtb_offset $(BOARD_DTB_OFFSET) --header_version 2

# Platform

TARGET_BOARD_PLATFORM := mt6771
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true

# Build rule
BUILD_BROKEN_DUP_RULES := true

#Crypto
#TW_INCLUDE_CRYPTO := true

# MTK Hardware

BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Partitions

BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4513071104
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55135157760
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true

# Recovery

# Colors: RGBA_8888 = Blue, ABGR_8888, BGRA_8888=yellow, RGBX_8888 = Blue
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
RECOVERY_SDCARD_ON_DATA := true

# system properties

TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system_prop.mk

# Workaround for error copying vendor files to recovery ramdisk

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# TWRP Related

TW_INPUT_BLACKLIST := "hbtp_vm"
TW_DEVICE_VERSION := $(shell date -u +" %F")
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 560
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_USE_TOOLBOX := true
TW_NO_SCREEN_BLANK := true
TW_NO_BATT_PERCENT := false
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en
#TW_OZIP_DECRYPT_KEY := "172B3E14E46F3CE13E2B5121CBDC4321"

# My Testing Flags:

TARGET_USES_MKE2FS := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_SCREEN_BLANK_ON_BOOT := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# OS
PLATFORM_SECURITY_PATCH := 2029-10-01
PLATFORM_VERSION := 16.1.0
TW_INCLUDE_CRYPTO := true

# Debug

TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

#SHRP Device Specific Properties

# Path of your SHRP Tree
#SHRP_PATH := device/oppo/CPH2021

# Maintainer name *
#SHRP_MAINTAINER := Mardev

#Official
#SHRP_OFFICIAL=true

# Device codename *
#SHRP_DEVICE_CODE := CPH2021

# Recovery Type (It can be treble,normal,SAR) [Only for About Section] *
#SHRP_REC_TYPE := Treble

# Recovery Type (It can be A/B or A_only) [Only for About Section] *
#SHRP_DEVICE_TYPE := A_only

#SHRP_EXPRESS := true
#SHRP_DARK := true
#SHRP_EDL_MODE := 0
#SHRP_EXTERNAL := /external_sd
#SHRP_INTERNAL := /sdcard
#SHRP_OTG := /usb_otg
#SHRP_FLASH := 1
#SHRP_REC := /dev/block/platform/bootdevice/by-name/recovery

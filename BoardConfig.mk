# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from the common fusion3 definitions
include device/sony/fusion3-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/sony/yuga/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := C6602,C6603,C6606,yuga

TARGET_SPECIFIC_HEADER_PATH += device/sony/yuga/include

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/yuga/bluetooth

#TARGET_KERNEL_CONFIG := omni_fusion3_yuga_defconfig
LOCAL_KERNEL := device/sony/yuga/prebuilt/kernel

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 26

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648

# UGLY, overrides fusion3-common
# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO :=
TARGET_USES_QCOM_COMPRESSED_AUDIO :=
BOARD_HAVE_NEW_QCOM_CSDCLIENT :=

# TWRP
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/devices/i2c-0/0-0036/leds/lm3533-lcd-bl/brightness

# MultiROM
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/sony/yuga/multirom/init_devices.c
MR_DPI := xhdpi
MR_DPI_FONT := 340
MR_FSTAB := device/sony/fusion3-common/rootdir/twrp.fstab
MR_USE_MROM_FSTAB := true
MR_KEXEC_MEM_MIN := 0x85000000
MR_RECOVERY_IN_BOOTIMG := true
MR_DEVICE_VARIANTS := C6602 C6603 C6606 yuga

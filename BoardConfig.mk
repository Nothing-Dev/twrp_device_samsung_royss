# config.mk
#
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.

LOCAL_PATH := device/samsung/royss
KERNEL_PATH := kernel/samsung/royss

-include vendor/samsung/royss/BoardConfigVendor.mk

## Platform
TARGET_BOARD_PLATFORM := msm7627a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := royss
TARGET_OTA_ASSERT_DEVICE := royss,GT-S6310
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_INITLOGO := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a5
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_ARCH_LOWMEM := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
USE_BLUETOOTH_SAP := true

# Audio
HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true

##Kernel
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_PREBUILT_KERNEL				:= $(LOCAL_PATH)/kernel
#TARGET_KERNEL_CONFIG := royss_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/royss

# Qualcomm
BUILD_EMULATOR_OPENGL := true
USE_OPENGL_RENDERER := true

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
ifeq ($(HOST_OS),linux)
WITH_DEXPREOPT := true
endif

# Recovery Variant
#RECOVERY_VARIANT 				:= philz
#RECOVERY_VARIANT 				:= cm
RECOVERY_VARIANT 				:= twrp
#RECOVERY_VARIANT 				:= cwm

TARGET_RECOVERY_FSTAB 				:= $(LOCAL_PATH)/recovery/royss.fstab
#BOARD_CUSTOM_RECOVERY_KEYMAPPING 		:= ../../$(LOCAL_PATH)/recovery/recovery_keys.c



# TWRP
#RECOVERY_SDCARD_ON_DATA 			:= true
RECOVERY_GRAPHICS_USE_LINELENGTH 		:= true
SP1_NAME 					:= "internal_sd"
SP1_BACKUP_METHOD 				:= files
SP1_MOUNTABLE 					:= 1
TW_INTERNAL_STORAGE_PATH 			:= "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT 		:= "data"
TW_EXTERNAL_STORAGE_PATH 			:= "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT 		:= "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE 			:= true
TW_FLASH_FROM_STORAGE 				:= true
TW_NO_REBOOT_BOOTLOADER 			:= true
TW_BRIGHTNESS_PATH                              := /sys/class/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH                 := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
TWHAVE_SELINUX 					:= true
TARGET_RECOVERY_INITRC 				:= $(LOCAL_PATH)/recovery/init.rc
TW_HAS_DOWNLOAD_MODE				:= true
DEVICE_RESOLUTION 				:= 320x480
#BOARD_USE_CUSTOM_RECOVERY_FONT 			:= \"roboto_10x18.h\"
TARGET_RECOVERY_PIXEL_FORMAT 			:= "RGBX_8888"

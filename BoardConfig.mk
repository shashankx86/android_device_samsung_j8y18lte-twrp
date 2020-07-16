USE_CAMERA_STUB := true
LOCAL_PATH := $(call my-dir)
DEVICE_PATH := device/samsung/j8y18lte
# inherit from the proprietary version
-include vendor/samsung/j8y18lte/BoardConfigVendor.mk

OLD_PLATFORM := \
	8.0.0 \
	8.1.0 \

ifeq ($(filter OLD_PLATFORM,$(PLATFORM_VERSION)),)

TARGET_ARCH := arm
TARGET_ARCH_VARIANT :=  armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

else 
TARGET_ARCH := arm64
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_VARIANT := cortex-a53
endif
TARGET_CPU_CORTEX_A53 := true

TARGET_NO_BOOTLOADER := true

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_BOOTLOADER_BOARD_NAME := MSM8953

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true


# Kernel
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_BASE := 0x80000000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_TAGS_OFFSET := 0x01e00000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/j8y18lte
TARGET_KERNEL_CONFIG := j8y18lte_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.selinux=permissive

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432 #25
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432 #26
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3397386240 #40
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57415790592 #43 57415806976 - 16384
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800 #43
BOARD_VENDORIMAGE_PARTITION_SIZE := 503316480 #41
BOARD_PERSISTIMAGE_PARTITION_SIZE := 1048576 #31
BOARD_FLASH_BLOCK_SIZE := 131072


# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# filesystem
TARGET_USES_MKE2FS:=true
include $(DEVICE_PATH)/twrp.mk

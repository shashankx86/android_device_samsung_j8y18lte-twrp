
TARGET_RECOVERY_DEVICE_DIRS := $(DEVICE_PATH)/twrp
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"
TARGET_HW_DISK_ENCRYPTION := true
TARGET_CRYPTFS_HW_PATH := "vendor/qcom/opensource/cryptfs_hw"
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888" #"ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/devices/battery/power_supply/battery"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true

TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_DEVICE_VERSION := goldfish07(Ayush Bisht)
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_EXCLUDE_DEFAULT_USB_INIT := true

TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

PRODUCT_COPY_FILES += $(DEVICE_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab

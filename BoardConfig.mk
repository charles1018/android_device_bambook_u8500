USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/bambook/u8500/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := \
    device/bambook/u8500/include \
    device/bambook/u8500/hardware/wlan/build \
    device/bambook/u8500/hardware/wlan/ste_pcsc


TARGET_OTA_ASSERT_DEVICE := u8500
BOARD_CUSTOM_BOOTIMG_MK := device/bambook/u8500/releasetools/custombootimg.mk
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/bambook/u8500/releasetools/ota_from_target_files

# Board
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := montblanc
TARGET_BOOTLOADER_BOARD_NAME := montblanc
BOARD_USES_STE_HARDWARE := true

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
TARGET_KERNEL_SOURCE := kernel/bambook/u8500
TARGET_KERNEL_CONFIG := bambook_u8500_defconfig
BOARD_KERNEL_CMDLINE := root=/dev/ram0 init=init rw console=ttyAMA2,115200n8 mem=256M initrd=0x800000,72M
#BOARD_MKBOOTIMG_ARGS :=  --ramdiskaddr 0x02000000
BOARD_FORCE_RAMDISK_ADDRESS := 0x02000000
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 16
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 340787200
BOARD_USERDATA_PARTITION_SIZE := 1170210816
BOARD_FLASH_BLOCK_SIZE := 131072

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
#COMMON_GLOBAL_CFLAGS += -DSTE_AUDIO

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_STE := true
COMMON_GLOBAL_CFLAGS += -DSTE_BT

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_TI_SOFTAP := true
TARGET_USE_ST_ERICSSON_KERNEL := true
WLAN_SET_PLATFORM := u8500


# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/bambook/u8500/prebuilt/system/lib/egl/egl.cfg
COMMON_GLOBAL_CFLAGS += -DSTE_HARDWARE

# Lights
TARGET_PROVIDES_LIBLIGHTS := false
#COMMON_GLOBAL_CFLAGS += -DNEW_NOTIFICATION -DSECOND_NOTIFICATION

# RECOVERY
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_10x18.h\"


# CWM
#BOARD_CUSTOM_GRAPHICS := ../../../device/bambook/u8500/recovery/graphics_en.c
BOARD_CUSTOM_GRAPHICS := ../../../device/bambook/u8500/recovery/graphics_cn.c
TARGET_RECOVERY_INITRC := device/bambook/u8500/recovery/recovery.rc
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/bambook/u8500/recovery/recovery-keys.c

 # TWRP
#TARGET_RECOVERY_INITRC := device/bambook/u8500/recovery/twrprecovery.rc
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/bambook/u8500/recovery/graphics_twrp_en.c
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/bambook/u8500/recovery/graphics_twrp_cn.c
#DEVICE_RESOLUTION := 540x960
#TW_EXTERNAL_STORAGE_PATH := "/sdcard"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"

# USB
BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p7

# Debug mode
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage,acm


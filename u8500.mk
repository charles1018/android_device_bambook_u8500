# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Configs
PRODUCT_COPY_FILES += \
    device/bambook/u8500/prebuilt/system/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh \
    device/bambook/u8500/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/bambook/u8500/prebuilt/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/bambook/u8500/prebuilt/system/etc/asound.conf:system/etc/asound.conf \
    device/bambook/u8500/prebuilt/system/etc/dbus.conf:system/etc/dbus.conf \
    device/bambook/u8500/prebuilt/system/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/bambook/u8500/prebuilt/system/etc/init.d/01stesetup:system/etc/init.d/01stesetup \
    device/bambook/u8500/prebuilt/system/etc/init.d/10dhcpcd:system/etc/init.d/10dhcpcd \
    device/bambook/u8500/prebuilt/system/etc/init.d/10hostapd:system/etc/init.d/10hostapd \
    device/bambook/u8500/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/bambook/u8500/prebuilt/system/etc/zram_config.sh:system/etc/zram_config.sh \
    device/bambook/u8500/prebuilt/system/etc/init_bd_addr.sh:system/etc/init_bd_addr.sh

# Configuration scripts
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/system/etc/cspsa.conf:system/etc/cspsa.conf

# USB function switching
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/root/init.st-ericsson.usb.rc:root/init.st-ericsson.usb.rc

PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
   $(LOCAL_PATH)/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml
# Custom init / uevent
PRODUCT_COPY_FILES += \
    device/bambook/u8500/prebuilt/root/init.rc:root/init.rc \
    device/bambook/u8500/prebuilt/root/init.st-ericsson.rc:root/init.st-ericsson.rc \
    device/bambook/u8500/prebuilt/root/ueventd.st-ericsson.rc:root/ueventd.st-ericsson.rc
 

# Key layouts and touchscreen
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/system/key/AB8500_Hs_Button.kl:system/usr/keylayout/AB8500_Hs_Button.kl \
   $(LOCAL_PATH)/prebuilt/system/key/STMPE-keypad.kl:system/usr/keylayout/STMPE-keypad.kl \
   $(LOCAL_PATH)/prebuilt/system/key/tc3589x-keypad.kl:system/usr/keylayout/tc3589x-keypad.kl \
   $(LOCAL_PATH)/prebuilt/system/key/ux500-ske-keypad.kl:system/usr/keylayout/ux500-ske-keypad.kl.kl \
   $(LOCAL_PATH)/prebuilt/system/key/ux500-ske-keypad-qwertz.kl:system/usr/keylayout/ux500-ske-keypad-qwertz.kl \
   $(LOCAL_PATH)/prebuilt/system/key/bu21013_ts.idc:system/usr/idc/bu21013_ts.idc \
   $(LOCAL_PATH)/prebuilt/system/key/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
   $(LOCAL_PATH)/prebuilt/system/key/synaptics_rmi4_i2c.idc:system/usr/idc/synaptics_rmi4_i2c.idc \
   $(LOCAL_PATH)/prebuilt/system/key/tp_ft5306.idc:system/usr/idc/tp_ft5306.idc


# HW Configs
PRODUCT_COPY_FILES += \
    device/bambook/u8500/prebuilt/system/etc/omxloaders:system/etc/omxloaders \
    device/bambook/u8500/prebuilt/system/etc/ril_config:system/etc/ril_config \
    device/bambook/u8500/prebuilt/system/bin/install_wlan:system/bin/install_wlan \
    device/bambook/u8500/prebuilt/system/etc/ste_modem.sh:system/etc/ste_modem.sh

# GPS
PRODUCT_COPY_FILES += \
    device/bambook/u8500/prebuilt/system/etc/cacert.txt:system/etc/cacert.txt \
    device/bambook/u8500/prebuilt/system/etc/gps.conf:system/etc/gps.conf

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Torch
PRODUCT_PACKAGES := \
    Torch
    
# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Hostapd
PRODUCT_PACKAGES += \
    hostapd_cli \
    hostapd
    
# Unofficial packages that I used from trees outside AOSP
PRODUCT_PACKAGES += \
    Stk \
    Superuser \
    su

# light package
#PRODUCT_PACKAGES += \
#   lights.montblanc

# Misc
PRODUCT_PACKAGES += \
   com.android.future.usb.accessory
# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise
    
$(call inherit-product-if-exists, vendor/bambook/u8500/u8500-vendor.mk)


$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/bambook/u8500/u8500-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/bambook/u8500/overlay

$(call inherit-product, build/target/product/full.mk)

PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, device/bambook/u8500/u8500.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=s1w_u8500 BUILD_FINGERPRINT=Bambookphone/s1w_u8500/u8500:4.1.1/NS4.1/13411:user/release-keys PRIVATE_BUILD_DESC="s1w_u8500-user 4.1.1 NS4.1 13411 release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_u8500
PRODUCT_DEVICE := u8500
PRODUCT_BRAND := Bambookphone
PRODUCT_MANUFACTURER := snda
PRODUCT_MODEL := Bambook S1



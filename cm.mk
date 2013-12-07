## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := u8500

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/bambook/u8500/full_u8500.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u8500
PRODUCT_NAME := cm_u8500

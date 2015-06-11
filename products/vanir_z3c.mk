#Squisher Choosing
DHO_VENDOR := vanir

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for z3c.
$(call inherit-product, device/sony/z3c/full_z3c.mk)

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)

#
# Setup device specific product configuration.
#
# Setup device specific product configuration.
PRODUCT_NAME := vanir_z3c
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := z3c
PRODUCT_MODEL := Xperia Z3C
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5803 BUILD_FINGERPRINT=Sony/D5803/D5803:5.0.2/23.1.A.1.28/151083418:user/release-keys PRIVATE_BUILD_DESC="D5803-user 5.0.2 23.1.A.1.28 151083418 release-keys"

#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-Z3C

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1280x720.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for yuga.
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
PRODUCT_RELEASE_NAME := Xperia Z3 compact
PRODUCT_MODEL := d5803
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5803 BUILD_FINGERPRINT=Sony/D5803/D5803:5.1.1/23.4.A.0.546/864948651:user/release-keys PRIVATE_BUILD_DESC="D5803-user 5.1.1 23.4.A.0.546 864948651 release-keys"

#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-onyx

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/oneplus/onyx/full_onyx.mk)
$(call inherit-product-if-exists, vendor/oneplus/onyx/onyx-vendor.mk)

# Inherit common onyx files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_onyx
PRODUCT_DEVICE := onyx
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BRAND := OnePlus
TARGET_VENDOR := oneplus
TARGET_VENDOR_PRODUCT_NAME := onyx

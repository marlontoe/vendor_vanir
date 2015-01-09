# Copyright (C) 2014 The VanirAOSP Project
# Copyright (C) 2014 nolinuxnoparty <nolinuxnoparty@vanir.us>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-nozomi


# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/sony/nozomi/full_nozomi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nozomi
PRODUCT_NAME := vanir_nozomi
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia S
PRODUCT_MANUFACTURER := Sony
PRODUCT_CHARACTERISTICS := phone

# Enable Torch
PRODUCT_PACKAGES += Torch
PRODUCT_PACKAGES += LockClock

# Inherit AOSP device configuration for flo.
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit common product files.
$(call inherit-product, vendor/rascarlo/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jcm_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:4.4.4/KTU84P/1227136:user/release-keys' PRIVATE_BUILD_DESC="razor-user 4.4.4 KTU84P 1227136 release-keys"

# Inherit media effect blobs
-include vendor/rascarlo/products/common_media_effects.mk

# boot animation
PRODUCT_COPY_FILES += \
    vendor/jcm/proprietary/flo/system/media/bootanimation.zip:system/media/bootanimation.zip

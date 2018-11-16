# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Inherit common Lineage rules/vars
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device config
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

-include device/google/crosshatch/crosshatch/device-lineage.mk # TODO XXX

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_crosshatch
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL 3
TARGET_MANUFACTUER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 9 PQ1A.181105.017.A1 5081125 release-keys"

BUILD_FINGERPRINT=google/crosshatch/crosshatch:9/PQ1A.181105.017.A1/5081125:user/release-keys \
    
$(call inherit-product-if-exists, vendor/google/crosshatch/crosshatch-vendor.mk)

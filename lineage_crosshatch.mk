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

$(call inherit-product-if-exists, vendor/google/crosshatch/crosshatch-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

-include device/google/crosshatch/blueline/device-arrow.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := arrow_blueline
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3
TARGET_MANUFACTURER := Google

DEVICE_MAINTAINER := Shi_Sheng

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=blueline \
    PRIVATE_BUILD_DESC="blueline-user 11 RQ3A.211001.001 7641976 release-keys"

BUILD_FINGERPRINT := google/blueline/blueline:11/RQ3A.211001.001/7641976:user/release-keys

$(call inherit-product, vendor/google/blueline/blueline-vendor.mk)

# Initialise device config
$(call inherit-product, device/samsung/hero2lte/device_hero2lte.mk)
$(call inherit-product, device/samsung/hero-common/hero-common.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common ViperOS stuff.
$(call inherit-product, vendor/viper/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := viper_hero2lte
PRODUCT_DEVICE := hero2lte
PRODUCT_MODEL := SM-G935F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hero2ltexx \
    PRIVATE_BUILD_DESC="hero2ltexx-user 8.0.0 R16NW G935FXXU2ERD5 release-keys"

BUILD_FINGERPRINT := samsung/hero2ltexx/hero2lte:8.0.0/R16NW/G935FXXU2ERD5:user/release-keys

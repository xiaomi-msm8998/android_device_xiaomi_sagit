$(call inherit-product, device/xiaomi/sagit/full_sagit.mk)

# Inherit some common LiteOS stuff.
$(call inherit-product, vendor/lite/lite.mk)

# SMS Messageing
PRODUCT_PACKAGES += \
    GMessaging

ALLOW_MISSING_DEPENDENCIES=true

PRODUCT_NAME := lite_sagit
PRODUCT_DEVICE := sagit
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6
PRODUCT_MANUFACTURER := Xiaomi

TARGET_VENDOR_PRODUCT_NAME := sagit

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sagit-user 8.0.0 OPR1.170623.027 V9.2.3.0.OCAMIEK release-keys"

BUILD_FINGERPRINT := Xiaomi/sagit/sagit:8.0.0/OPR1.170623.027/V9.2.3.0.OCAMIEK:user/release-keys

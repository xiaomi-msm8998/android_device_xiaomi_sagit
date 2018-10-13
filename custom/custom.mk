# Apps
PRODUCT_PACKAGES += \
    XiaomiParts \
    DeviceSettings \
    GoogleCamera \
    com.ustwo.lwp

# Boot Animation
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/pixel2darkbootanimation_by_darkalex97_xda_v2.zip:system/media/bootanimation.zip

# Launcher
PRODUCT_PACKAGES += \
    NexusLauncher

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/launcher/etc/launcher-hiddenapi-package-whitelist.xml:system/etc/sysconfig/launcher-hiddenapi-package-whitelist.xml

# OTA for AEX
$(call inherit-product-if-exists, vendor/aosp/config/ota.mk)

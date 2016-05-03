# Release name
PRODUCT_RELEASE_NAME := a7alte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit nfc enhanced configuration
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a7alte/device_a7alte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_a7alte
PRODUCT_DEVICE := a7alte

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=a7altexx \
	PRODUCT_MODEL=SM-A700F \
	PRODUCT_MANUFACTURER=samsung \
	TARGET_DEVICE=a8elte \

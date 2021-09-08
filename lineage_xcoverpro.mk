# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_q.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/xcoverpro/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xcoverpro
PRODUCT_NAME := lineage_xcoverpro
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G715FN
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := samsung/xcoverpro/xcoverpro:11/RP1A.200720.012 G715FNXXS9CUH1/G715FNXXS9CUH1:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=xcoverpro \
        PRIVATE_BUILD_DESC="xcoverpro-user 11 RP1A.200720.012 G715FNXXS9CUH1 release-keys"

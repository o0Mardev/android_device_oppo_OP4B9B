# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier.
PRODUCT_BRAND := oppo
PRODUCT_DEVICE := CPH2021
PRODUCT_MANUFACTURER := oppo
PRODUCT_MODEL := CPH2021
PRODUCT_NAME := twrp_CPH2021

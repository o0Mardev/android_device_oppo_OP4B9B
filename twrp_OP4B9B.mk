$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

PRODUCT_DEVICE := OP4B9B
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH2021
PRODUCT_MANUFACTURER := OPPO

PRODUCT_SHIPPING_API_LEVEL := 28

DEVICE_PATH := device/$(PRODUCT_BRAND)/$(PRODUCT_DEVICE)

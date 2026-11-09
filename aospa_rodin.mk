#
# SPDX-License-Identifier: Apache-2.0
# PenguinOS (AOSPA) product for POCO X7 Pro / Redmi Turbo 4 (rodin)
#

# Inherit from the device configuration (device.mk already inherits
# core_64_bit_only + full_base_telephony).
$(call inherit-product, device/xiaomi/rodin/device.mk)

# Inherit from the AOSPA / PenguinOS configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_NAME := aospa_rodin
PRODUCT_DEVICE := rodin
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2412DPC0AG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=rodin \
    DeviceProduct=rodin_global \
    SystemName=rodin_global

# PenguinOS / AOSPA flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true
# TARGET_DISABLES_GMS := true   # uncomment for a vanilla build

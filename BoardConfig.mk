DEVICE_PATH := device/samsung/xcoverpro

# Assert
TARGET_OTA_ASSERT_DEVICE := xcoverpro

# Kernel
TARGET_KERNEL_CONFIG := exynos9611-xcoverpro_defconfig

## TODO! Find the right partition size

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 4561305600

# Inherit common board flags
include device/samsung/universal9611-common/BoardConfigCommon.mk

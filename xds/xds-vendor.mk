#lib
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/gpd/xds/proprietary/lib,system/lib)
#lib64
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/gpd/xds/proprietary/lib64,system/lib64)
#bin
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/gpd/xds/proprietary/bin,system/bin)
#etc
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/gpd/xds/proprietary/etc,system/etc)
#usr
#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/gpd/xds/proprietary/usr,system/usr)
#xbin
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/gpd/xds/proprietary/xbin,system/xbin)
#vendor
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/gpd/xds/proprietary/vendor,system/vendor)

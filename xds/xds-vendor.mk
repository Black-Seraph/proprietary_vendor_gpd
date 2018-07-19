#lib
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/allview/x2xtreme/proprietary/lib,system/lib)
#lib64
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/allview/x2xtreme/proprietary/lib64,system/lib64)
#bin
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/allview/x2xtreme/proprietary/bin,system/bin)
#etc
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/allview/x2xtreme/proprietary/etc,system/etc)
#usr
#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/allview/x2xtreme/proprietary/usr,system/usr)
#xbin
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/allview/x2xtreme/proprietary/xbin,system/xbin)
#vendor
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/allview/x2xtreme/proprietary/vendor,system/vendor)

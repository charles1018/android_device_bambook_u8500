LOCAL_PATH := $(call my-dir)

INSTALLED_BOOTIMAGE_TARGET := $(PRODUCT_OUT)/boot.img
$(INSTALLED_BOOTIMAGE_TARGET): $(PRODUCT_OUT)/kernel $(recovery_ramdisk) $(INSTALLED_RAMDISK_TARGET) $(MKBOOTIMG) $(MINIGZIP) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Boot image: $@")
	$(hide) mkdir -p $(PRODUCT_OUT)/combinedroot
	$(hide) cp -R $(PRODUCT_OUT)/root/* $(PRODUCT_OUT)/combinedroot/
	$(hide) cp -R $(PRODUCT_OUT)/../../../../device/bambook/u8500/prebuilt/root/init $(PRODUCT_OUT)/combinedroot/
	$(hide) cp -R $(PRODUCT_OUT)/combinedroot/init.st-ericsson.rc $(PRODUCT_OUT)/combinedroot/init.st-ericssona9500platform.rc
	$(hide) cp -R $(PRODUCT_OUT)/combinedroot/init.st-ericsson.rc $(PRODUCT_OUT)/combinedroot/init.st-ericssonmop500platform.rc
	$(hide) cp -R $(PRODUCT_OUT)/combinedroot/init.st-ericsson.rc $(PRODUCT_OUT)/combinedroot/init.st-ericssonu8500platformhrefv60.rc 
	$(hide) cp -R  $(PRODUCT_OUT)/combinedroot/init.st-ericsson.usb.rc $(PRODUCT_OUT)/combinedroot/init.st-ericssona9500platform.usb.rc
	$(hide) cp -R $(PRODUCT_OUT)/combinedroot/init.st-ericsson.usb.rc  $(PRODUCT_OUT)/combinedroot/init.st-ericssonmop500platform.usb.rc
	$(hide) cp -R $(PRODUCT_OUT)/combinedroot/init.st-ericsson.usb.rc $(PRODUCT_OUT)/combinedroot/init.st-ericssonu8500platformhrefv60.usb.rc
	$(hide) cp -R $(PRODUCT_OUT)/combinedroot/ueventd.st-ericsson.rc $(PRODUCT_OUT)/combinedroot/ueventd.st-ericssona9500platform.rc
	$(hide) cp -R $(PRODUCT_OUT)/combinedroot/ueventd.st-ericsson.rc $(PRODUCT_OUT)/combinedroot/ueventd.st-ericssonmop500platform.rc
	$(hide) cp -R $(PRODUCT_OUT)/combinedroot/ueventd.st-ericsson.rc $(PRODUCT_OUT)/combinedroot/ueventd.st-ericssonu8500platformhrefv60.rc
	$(hide) $(MKBOOTFS) $(PRODUCT_OUT)/combinedroot > $(PRODUCT_OUT)/combinedroot.cpio
	$(hide) cat $(PRODUCT_OUT)/combinedroot.cpio | gzip > $(PRODUCT_OUT)/combinedroot.fs
	$(hide) rm -rf $(PRODUCT_OUT)/system/bin/recovery
	$(hide) $(MKBOOTIMG) --kernel $(PRODUCT_OUT)/kernel --ramdisk $(PRODUCT_OUT)/combinedroot.fs --cmdline "$(BOARD_KERNEL_CMDLINE)" --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --ramdiskaddr  $(BOARD_FORCE_RAMDISK_ADDRESS) -o $@

INSTALLED_RECOVERYIMAGE_TARGET := $(PRODUCT_OUT)/recovery.img
$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
	$(recovery_ramdisk) \
	$(recovery_kernel)
	@echo ----- Making recovery image ------
	$(hide) $(MKBOOTFS) $(PRODUCT_OUT)/recovery/root > $(PRODUCT_OUT)/ramdisk-recovery.img
	$(hide) $(MKBOOTIMG) --kernel $(PRODUCT_OUT)/kernel --ramdisk $(PRODUCT_OUT)/ramdisk-recovery.img --cmdline "$(BOARD_KERNEL_CMDLINE)" --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --ramdiskaddr  $(BOARD_FORCE_RAMDISK_ADDRESS)  -o $@
	@echo ----- Made recovery image -------- $@

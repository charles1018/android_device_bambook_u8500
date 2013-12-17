LOCAL_PATH := $(call my-dir)

INSTALLED_BOOTIMAGE_TARGET := $(PRODUCT_OUT)/boot.img
$(INSTALLED_BOOTIMAGE_TARGET): $(PRODUCT_OUT)/kernel $(recovery_ramdisk) $(INSTALLED_RAMDISK_TARGET) $(MKBOOTIMG) $(MINIGZIP) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Boot image: $@")
	$(hide) mkdir -p $(PRODUCT_OUT)/combinedroot
	$(hide) cp -R $(PRODUCT_OUT)/root/* $(PRODUCT_OUT)/combinedroot/
	$(hide) cp -R $(PRODUCT_OUT)/../../../../device/bambook/u8500/prebuilt/root/init $(PRODUCT_OUT)/combinedroot/
	$(hide) $(MKBOOTFS) $(PRODUCT_OUT)/combinedroot > $(PRODUCT_OUT)/combinedroot.cpio
	$(hide) cat $(PRODUCT_OUT)/combinedroot.cpio | gzip > $(PRODUCT_OUT)/combinedroot.fs
	$(hide) rm -rf $(PRODUCT_OUT)/system/bin/recovery
	$(hide) $(MKBOOTIMG) --kernel $(PRODUCT_OUT)/kernel --ramdisk $(PRODUCT_OUT)/combinedroot.fs --cmdline "$(BOARD_KERNEL_CMDLINE)" --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --ramdiskaddr  $(BOARD_FORCE_RAMDISK_ADDRESS) -o $@

INSTALLED_RECOVERYIMAGE_TARGET := $(PRODUCT_OUT)/recovery.img
$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
	$(recovery_ramdisk) \
	$(recovery_kernel)
	@echo ----- Making recovery image ------
	$(hide) $(MKBOOTIMG) --kernel $(PRODUCT_OUT)/kernel --ramdisk $(PRODUCT_OUT)/ramdisk-recovery.img --cmdline "$(BOARD_KERNEL_CMDLINE)" --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --ramdiskaddr  $(BOARD_FORCE_RAMDISK_ADDRESS)  -o $@
	@echo ----- Made recovery image -------- $@

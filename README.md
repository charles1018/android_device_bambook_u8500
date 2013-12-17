# android_device_bambook-u8500

# for CyanogenMod 10 

		curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ～/bin/repo
		chmod 755 /root/bin/repo
		mkdir cm10
		cd cm10
		repo init -u git://github.com/CyanogenMod/android.git -b jellybean
		repo sync
		mkdir -p device/bambook/u8500
		git clone https://github.com/XMelancholy/android_device_bambook_u8500.git -b jellybean device/bambook/u8500
		cd device/bambook/u8500
		./extract-files.sh
		cd ../../..
# OR
		mkdir -p vendor/bambook/u8500
		git clone https://github.com/XMelancholy/android_vendor_bambook_u8500 vendor/bambook/u8500

		mkdir -p kernel/bambook/u8500
		git clone https://github.com/XMelancholy/android_kernel_bambook_u8500 kernel/bambook/u8500
# 打补丁

		
		patch -p1 < device/bambook/u8500/patches/key.patch
		patch -p1 < device/bambook/u8500/patches/media.xml.patch
		
		在你需要更新源码的时候， 还原
		
		patch -p1 -R < device/bambook/u8500/patches/key.patch
		patch -p1 -R < device/bambook/u8500/patches/media.xml.patch

# 下载 CM prebuilts :

		./vendor/cm/get-prebuilts

# 编译教程

		source build/envsetup.sh
		lunch full_u8500-eng
		brunch u8500

# 结束

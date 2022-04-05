repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11
git clone https://github.com/shashankx86/android_device_xiaomi_spes-TWRP.git -b twrp-11 device/xiaomi/spes

export ALLOW_MISSING_DEPENDENCIES=true
pwd
ls
source build/envsetup.sh
lunch twrp_spes-eng
mka bootimage

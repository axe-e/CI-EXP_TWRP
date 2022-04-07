repo init -u https://github.com/SHRP/manifest.git -b v3_11.0
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
git clone https://github.com/OrangeFoxRecovery/device_xiaomi_spes.git -b fox_11.0 device/xiaomi/spes

export ALLOW_MISSING_DEPENDENCIES=true
pwd
ls
source build/envsetup.sh
lunch twrp_spes-eng
mka bootimage

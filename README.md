# ViperOS Extended device tree for CUBOT MAX

CUBOT MAX
==============

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | 1.3GHz Quad-Core MT6753A
GPU     | Mali-T720
Memory  | 3GB RAM
Shipped Android Version | 6.0
Storage | 32GB
Battery | 4100 mAh
Display | 6" 720 x 1280 px
Camera  | Front: 5.0MPx, Back 13MPx, LED Flash

![DEXP](https://github.com/h0sch180/android_device_cubot_max/blob/master/cubot_max.jpg "Cubot Max")


# Instructions
```
repo init -u https://github.com/ViperOS-Extended/manifest -b nougat
repo sync -c -f -j8 --force-sync --no-clone-bundle --no-tags
git clone https://github.com/h0sch180/android_device_cubot_max.git -b viperos device/CUBOT/MAX
./device/CUBOT/MAX/patches_mtk/apply-patches.sh
. build/envsetup.sh
export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx8g"
./prebuilts/sdk/tools/jack-admin kill-server
./prebuilts/sdk/tools/jack-admin start-server
lunch viper_MAX-userdebug
mka poison
```


# Acknowledgements

* seluce
* iodine71
* olegsvs
* danielhk
* Zormax
* xcore995
* SRTK
* and others I might have forgotten to include

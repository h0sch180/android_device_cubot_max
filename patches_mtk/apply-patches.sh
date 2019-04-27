#!/bin/bash
#cd ../../../..
cd system/core
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/system_core/0001-system_core.patch
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/system_core/0002-Prevent-spamming-audio.patch
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/system_core/0003-healthd-correctly-report-battery-voltage-on-MTK-kernels.patch
cd ../..
cd bionic
patch -p1 < ../device/CUBOT/MAX/patches_mtk/bionic.patch
cd ..
cd system/sepolicy
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/system_sepolicy.patch
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/system_sepolicy2.patch
cd ../..
cd system/netd
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/system_netd.patch
cd ../..
cd system/bt
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/system_bt.patch
cd ../..
cd frameworks/av
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/frameworks_av.patch
cd ..
cd native
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/frameworks_native.patch
cd ..
cd base
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/framework_base/0001-frameworks_base.patch
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/framework_base/0002-Fix-Minior-Bugs.patch
cd ..
cd opt/telephony
patch -p1 < ../../../device/CUBOT/MAX/patches_mtk/frameworks_opt_telephony.patch
cd ../../..
cd packages/apps/Snap
patch -p1 < ../../../device/CUBOT/MAX/patches_mtk/snap.patch
cd ..
cd FMRadio
patch -p1 < ../../../device/CUBOT/MAX/patches_mtk/fmradio.patch
cd ../../..
cd packages/apps/Settings
patch -p1 < ../../../device/CUBOT/MAX/patches_mtk/settings.patch
if [ "`pwd`" == "/android/viperos/packages/apps/Settings" ]; then
	patch -p1 < ../../../device/CUBOT/MAX/patches_mtk/settings_viper.patch
fi
git clean -f -d
cd ../../..

# EngineerMode Patches
cd frameworks/av
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/engineermode/1-em.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/engineermode/0002-em.patch
cd ../..
exit 0

#!/bin/bash
#cd ../../../..
cd system/core
patch -t -p1 < ../../device/CUBOT/MAX/patches_mtk/system_core.patch
git clean -f -d
cd ../..
cd bionic
patch -t -p1 < ../device/CUBOT/MAX/patches_mtk/bionic.patch
git clean -f -d
cd ..
cd system/sepolicy
patch -t -p1 < ../../device/CUBOT/MAX/patches_mtk/system_sepolicy.patch
git clean -f -d
cd ../..
cd frameworks/av
patch -t -p1 < ../../device/CUBOT/MAX/patches_mtk/frameworks_av.patch
git clean -f -d
cd ..
cd native
patch -t -p1 < ../../device/CUBOT/MAX/patches_mtk/frameworks_native.patch
git clean -f -d
cd ..
cd base
patch -t -p1 < ../../device/CUBOT/MAX/patches_mtk/frameworks_base.patch
git clean -f -d
cd ..
cd opt/telephony
patch -t -p1 < ../../../device/CUBOT/MAX/patches_mtk/frameworks_opt_telephony.patch
git clean -f -d
cd ../../..
cd packages/apps/Snap
patch -t -p1 < ../../../device/CUBOT/MAX/patches_mtk/snap.patch
git clean -f -d
cd ..
cd FMRadio
patch -t -p1 < ../../../device/CUBOT/MAX/patches_mtk/fmradio.patch
git clean -f -d
cd ../../..
cd system/netd
patch -t -p1 < ../../device/CUBOT/MAX/patches_mtk/system_netd.patch
git clean -f -d
cd ../..
cd vendor/cmsdk
patch -t -p1 < ../../device/CUBOT/MAX/patches_mtk/vendor_cmsdk.patch
git clean -f -d
cd ../..
cd packages/apps/Settings
patch -t -p1 < ../../../device/CUBOT/MAX/patches_mtk/settings.patch
git clean -f -d
cd ../../..


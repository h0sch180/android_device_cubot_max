#!/bin/bash
#cd ../../../..
cd system/core
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/system_core.patch
cd ../..
cd bionic
patch -p1 < ../device/CUBOT/MAX/patches_mtk/bionic.patch
cd ..
cd system/sepolicy
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/system_sepolicy.patch
cd ../..
cd frameworks/av
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/frameworks_av.patch
cd ..
cd native
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/frameworks_native.patch
cd ..
cd base
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/frameworks_base.patch
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
cd system/netd
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/system_netd.patch
cd ../..
cd vendor/cmsdk
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/vendor_cmsdk.patch
cd ../..
cd packages/apps/Settings
patch -p1 < ../../../device/CUBOT/MAX/patches_mtk/settings.patch
cd ../../..


#!/bin/bash
#cd ../../../..
cd frameworks/av
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/engineermode/1-em.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/CUBOT/MAX/patches_mtk/engineermode/0002-em.patch
cd ../..
 
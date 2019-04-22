#!/bin/bash
#cd ../../../..
cd frameworks/av
git apply -v ../../device/CUBOT/MAX/patches_mtk/1-em.patch
cd ../..
cd frameworks/base
git apply -v ../../device/CUBOT/MAX/patches_mtk/0002-em.patch
cd ../.. 

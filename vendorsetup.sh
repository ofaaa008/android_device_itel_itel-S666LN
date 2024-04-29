#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

TFILE=$PWD/out/hapticspath.patched
[ ! -d "out" ]&& mkdir -p out
RET=0
REVERSE=0

cd bootable/recovery
git apply --reverse --check ../../device/itel/S666LN/patches/0001-Change-haptics-activation-file-path.patch || REVERSE=$?
cd ../../

if [ -f "$TFILE" ];then
    echo "haptics path patched already, skipping"
elif [ $REVERSE -eq 0 ]; then
    echo "$TFILE is not found but git is able to reverse haptics path patch, assuming it's already patched, skipping"
else
    cd bootable/recovery
    git apply ../../device/itel/S666LN/patches/0001-Change-haptics-activation-file-path.patch || RET=$?
    cd ../../
    if [ $RET -ne 0 ];then
        echo "ERROR: minuitwrp/events.cpp could not be patched! Vibration in TWRP will not work."
    else
        echo "OK: minuitwrp/events.cpp patched"
        touch $TFILE
    fi
fi

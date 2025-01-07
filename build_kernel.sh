#!/bin/bash


# export PLATFORM_VERSION=13
# export ANDROID_MAJOR_VERSION=t
# export ARCH=arm64

# make clean && make mrproper
# make ARCH=arm64 mizkernel-a12snsxx_defconfig
# make ARCH=arm64 -j64


export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=t
export ARCH=arm64
export KBUILD_BUILD_USER="@Mizumo_prjkt"

# Summon KSU

git-init_ksu() {
    git submodule init && git submodule update
}

START_BUILD_TIME_RAW=$(TZ="Asia/Manila" date +%T)
START_BUILD_DATE_RAW=$(TZ="Asia/Manila" date +%F)
START_BUILD_TIME_AND_DATE="$START_BUILD_TIME_RAW - $START_BUILD_DATE_RAW"
echo "Starting Compile of A12s Kernel"
echo "Start Build: $START_BUILD_TIME_AND_DATE"



#!/bin/bash


export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=t
export ARCH=arm64

make clean && make mrproper
make ARCH=arm64 mizkernel-a12snsxx_defconfig
make ARCH=arm64 -j64

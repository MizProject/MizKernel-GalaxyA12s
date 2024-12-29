#!/bin/bash


# export PLATFORM_VERSION=13
# export ANDROID_MAJOR_VERSION=t
# export ARCH=arm64

# make ARCH=arm64 exynos850-a12snsxx_defconfig
# make ARCH=arm64 -j64


export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=t
export ARCH=arm64

make clean && make mrproper
make ARCH=arm64 mizkernel-stable_defconfig
make ARCH=arm64 -j"$(nproc --all)"

#!/bin/sh -ex

BUILDCACHE_VERSION="0.22.3"

choco install wget ninja
# Install buildcache
wget "https://github.com/mbitsnbites/buildcache/releases/download/v${BUILDCACHE_VERSION}/buildcache-win-mingw.zip"
7z x 'buildcache-win-mingw.zip'
mv ./buildcache/bin/buildcache.exe "/c/ProgramData/chocolatey/bin"
rm -rf ./buildcache/

# Download and extract SDL2
SDL2_VER="2.32.8"
SDL2_URL="https://github.com/libsdl-org/SDL/releases/download/release-${SDL2_VER}/SDL2-devel-${SDL2_VER}-VC.zip"
wget -O SDL2.zip "$SDL2_URL"
7z x SDL2.zip -oSDL2-tmp
mv SDL2-tmp/SDL2-${SDL2_VER} SDL2
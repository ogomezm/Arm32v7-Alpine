#!/usr/bin/env bash
rootfsfile=$(head -1 filenames.log)
echo "Renaming to rootfs.tar.xz"
cp $rootfsfile rootfs.tar.xz
echo "Building the Dockerfile"
docker build .
echo "Cleaning"
rm filenames.log
rm alpine-minirootfs-3*


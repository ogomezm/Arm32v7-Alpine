#!/usr/bin/env bash
rootfsfile=$(head -1 filenames.log)
cp $rootfsfile rootfs.tar.xz
docker build .
rm filenames.log
rm alpine-minirootfs-3*


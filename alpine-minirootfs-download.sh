#!/usr/bin/env bash
alpineUrl="http://dl-2.alpinelinux.org/alpine/latest-stable/releases/armhf/"
# get all the minirootfs Files

wget -O - -q $alpineUrl |
grep minirootfs |
tail -4 |
cut -d'>' -f 2 |
cut -d'<' -f 1 > filenames.log

while read -r line
do
    file="$line"
    echo "Downloading [$alpineUrl$file]"
    wget -q $alpineUrl$file
done < filenames.log

rootfsfile=$(head -1 filenames.log)
signaturefile=$(tail -1 filenames.log)

sha512sum $signaturefile

echo "Renaming to rootfs.tar.xz"
cp $rootfsfile rootfs.tar.xz

echo "Renaming Signature"
cp $signaturefile signature.tar.xz.sha512

echo "Cleaning"
rm filenames.log
rm alpine-minirootfs-3*

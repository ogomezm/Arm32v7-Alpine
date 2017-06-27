#!/usr/bin/env bash
apk add --update curl   \
     qemu-system-x86_64 \
     qemu-user-static   \
     binfmt-support

addgroup $USER kvm
rm -rf /var/cache/apk/*

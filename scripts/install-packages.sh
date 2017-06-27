#!/usr/bin/env bash
apk add --update curl 
apk add --update qemu-system-x86_64
modprobe kvm-intel
addgroup $USER kvm
gpasswd -a $USER kvm
rm -rf /var/cache/apk/*

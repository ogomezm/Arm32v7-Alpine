#!/usr/bin/env bash
echo "Cleaning $(pwd)"
cd tmp
rm *.*
cd ..
rmdir tmp

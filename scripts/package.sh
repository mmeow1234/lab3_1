#!/bin/bash
mkdir -p package/usr/bin
mkdir -p package/DEBIAN
cp reverse-words package/usr/bin/
cp DEBIAN/control package/DEBIAN/
dpkg-deb --build package reverse-words.deb

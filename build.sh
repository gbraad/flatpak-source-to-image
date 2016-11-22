#!/bin/sh
mkdir -p source-to-image/export
mkdir -p source-to-image/files/bin
mkdir -p .tmp
curl -sSL https://github.com/openshift/source-to-image/releases/download/v1.1.3/source-to-image-v1.1.3-ddb10f1-linux-amd64.tar.gz > .tmp/source-to-image.tar.gz
tar -zxvf .tmp/source-to-image.tar.gz -C .tmp/
mv .tmp/s2i source-to-image/files/bin/
cp metadata source-to-image/
rm -rf .tmp
flatpak build-export repo source-to-image
flatpak build-bundle repo source-to-image.flatpak nl.gbraad.Source2Image

#! /bin/bash

# Preflight binary installation to $PWD

mkdir .tmp_preflight

curl -L https://github.com/SpectralOps/preflight/releases/download/v1.1.4/preflight_1.1.4_Linux_arm64.tar.gz -o .tmp_preflight/preflight_1.1.4_Linux_x86_64.tar.gz

cd .tmp_preflight/
tar -xvf preflight_1.1.4_Linux_x86_64.tar.gz
cd ..

cp ./.tmp_preflight/preflight preflight

ls .tmp_preflight

rm -rf .tmp_preflight/

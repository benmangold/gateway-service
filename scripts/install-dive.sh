#! /bin/bash

# Dive Debian package installation.  MacOSX installs Dive via `brew install dive`.

export CHECKSUM=$(curl -L https://github.com/wagoodman/dive/releases/download/v0.10.0/dive_0.10.0_checksums.txt | grep linux_amd64.deb)

curl -L https://github.com/wagoodman/dive/releases/download/v0.10.0/dive_0.10.0_linux_amd64.deb -o dive_0.10.0_linux_amd64.deb

./preflight check sha256=$CHECKSUM dive_0.10.0_linux_amd64.deb

sudo apt install ./dive_0.10.0_linux_amd64.deb

rm dive_0.10.0_linux_amd64.deb

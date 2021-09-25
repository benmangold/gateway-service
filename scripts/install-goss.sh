#! /bin/bash

# Goss Binary installation to $PWD

export GOSS_CHECKSUM=$(curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64.sha256 | head -n1 | cut -d " " -f1 )

curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o goss

./preflight check sha256=$GOSS_CHECKSUM goss

chmod +rx goss

# DGoss Binary installation to $PWD

export DGOSS_CHECKSUM=$(curl -L https://github.com/aelsabbahy/goss/releases/latest/download/dgoss.sha256 | head -n1 | cut -d " " -f1 )

curl -L https://github.com/aelsabbahy/goss/releases/latest/download/dgoss -o dgoss

./preflight check sha256=$DGOSS_CHECKSUM dgoss

chmod +rx dgoss

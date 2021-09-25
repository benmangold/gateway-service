#! /bin/bash

# Snyk binary installation to $PWD

export CHECKSUM=$(curl -L https://github.com/snyk/snyk/releases/latest/download/snyk-linux.sha256 | head -n1 | cut -d " " -f1)

curl -L https://github.com/snyk/snyk/releases/latest/download/snyk-linux -o snyk

./preflight check sha256=$CHECKSUM snyk 

chmod +rx snyk

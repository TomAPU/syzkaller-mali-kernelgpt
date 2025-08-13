#!/bin/bash
# clean
tools/syz-env make clean
# generate
tools/syz-env make TARGETOS=linux TARGETARCH=arm64 generate -j$(nproc)
# make
tools/syz-env make TARGETOS=linux TARGETARCH=arm64 -j$(nproc)
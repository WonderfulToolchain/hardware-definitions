#!/bin/sh

if [ -d dist ]; then
    rm -r dist
fi

mkdir -p dist/c/wswan
python generate.py -f c --define-guard WS_PORTS_H_ -o dist/c/wswan/ports.h target/wswan

mkdir -p dist/nasm/wswan
python generate.py -f nasm -o dist/nasm/wswan/ports.inc target/wswan

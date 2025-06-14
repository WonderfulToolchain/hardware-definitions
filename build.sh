#!/bin/sh

if [ -d dist ]; then
    rm -r dist
fi

mkdir -p dist/c/fc
python generate.py -f c --define-guard FC_MMIO_H_ -o dist/c/fc/mmio.h target/fc

mkdir -p dist/c/gba
python generate.py -f c --define-guard GBA_MMIO_H_ -o dist/c/gba/mmio.h target/gba

mkdir -p dist/c/wswan
python generate.py -f c --define-guard WS_PORTS_H_ -o dist/c/wswan/ports.h target/wswan

mkdir -p dist/nasm/wswan
python generate.py -f nasm -o dist/nasm/wswan/ports.inc target/wswan


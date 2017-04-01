#!/bin/sh

if grep -qs '/mnt/silvermac' /proc/mounts; then
        exit 0
else
        sshfs ruben@silvermac:/Downloads /mnt/silvermac
fi

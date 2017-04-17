#!/bin/sh

# put something like this in cron
# */2 * * * * /path/to/file.sh
# runs it every 2 minutes

if grep -qs '/mnt/silvermac' /proc/mounts; then
        exit 0
else
        sshfs ruben@silvermac:/Downloads /mnt/silvermac
fi

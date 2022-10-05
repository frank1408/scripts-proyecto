#!/bin/bash
mount -t cgroup -o devices devices devices
cd /sys/fs/cgroup

# SE PERMITE TODO DISPOSITIVO
#echo "a" > devices.allow

# SE NIEGA TODO DISPOSITIVO
echo "a" > devices.deny

exit 0;

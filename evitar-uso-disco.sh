#!/bin/bash
mount -t cgroup -o devices devices devices
cd /sys/fs/cgroup

# SE PERMITEN TODOS LOS DISPOSITIVO
#echo "a" > devices.allow

# SE NIEGAN TODOS LOS DISPOSITIVO
echo "a" > devices.deny

exit 0;

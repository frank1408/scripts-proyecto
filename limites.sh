#!/bin/bash
RUTA="/sys/fs/cgroup/init.scope"

cd $RUTA
cd ..
echo "+cpu" > cgroup.subtree_control
cd $RUTA


echo "512M" > memory.max
echo "10000 100000" > cpu.max
echo "180" > pids.max




exit 0;

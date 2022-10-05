#!/bin/bash
RUTA="/sys/fs/cgroup/init.scope"

/sys/fs/cgroup/user.slice
/pids.max
/memory.swap.max
/memory.max
/cpu.max


/sys/fs/cgroup/system.slice
echo "+cpu" > cgroup.subtree_control
/pids.max
/memory.swap.max
/memory.max
/cpu.max






cd $RUTA
echo "+cpu" > cgroup.subtree_control
cd ..
echo "+cpu" > cgroup.subtree_control
cd $RUTA


echo "512M" > memory.max
echo "10000 100000" > cpu.max
echo "180" > pids.max




exit 0;

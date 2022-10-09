#!/bin/bash

# Documentacion
# https://www.kernel.org/doc/Documentation/cgroup-v1/memory.txt


 RCGROUP="/sys/fs/cgroup"
    RUTA="/sys/fs/cgroup/init.scope"
RUSUARIO="/sys/fs/cgroup/user.slice"
RSISTEMA="/sys/fs/cgroup/system.slice"

echo -e "cpu memory pids added to controllers !"

echo "+cpu" >  $RCGROUP/cgroup.controllers
echo "+cpu" >     $RUTA/cgroup.controllers
echo "+cpu" > $RUSUARIO/cgroup.controllers
echo "+cpu" > $RSISTEMA/cgroup.controllers


echo "+memory" >  $RCGROUP/cgroup.controllers
echo "+memory" >     $RUTA/cgroup.controllers
echo "+memory" >  $RUSUARIO/cgroup.controllers
echo "+memory" > $RSISTEMA/cgroup.controllers


echo "+pids"   >  $RCGROUP/cgroup.controllers
echo "+pids"   >     $RUTA/cgroup.controllers
echo "+pids"   > $RUSUARIO/cgroup.controllers
echo "+pids"   > $RSISTEMA/cgroup.controllers





echo -e "cpu memory pids added to subtree_control !"

echo "+cpu" >  $RCGROUP/cgroup.subtree_control
echo "+cpu" >     $RUTA/cgroup.subtree_control
echo "+cpu" > $RUSUARIO/cgroup.subtree_control
echo "+cpu" > $RSISTEMA/cgroup.subtree_control


echo "+memory" >  $RCGROUP/cgroup.subtree_control
echo "+memory" >     $RUTA/cgroup.subtree_control
echo "+memory" > $RUSUARIO/cgroup.subtree_control
echo "+memory" > $RSISTEMA/cgroup.subtree_control


echo "+pids" >  $RCGROUP/cgroup.subtree_control
echo "+pids" >     $RUTA/cgroup.subtree_control
echo "+pids" > $RUSUARIO/cgroup.subtree_control
echo "+pids" > $RSISTEMA/cgroup.subtree_control



echo -e "ram cpu pids swap"

echo "360" >  $RCGROUP/pids.max
echo "360" >     $RUTA/pids.max
echo "360" > $RUSUARIO/pids.max
echo "720" > $RSISTEMA/pids.max


echo "1024M" >  $RCGROUP/memory.swap.max
echo "1024M" >     $RUTA/memory.swap.max
echo "1024M" > $RUSUARIO/memory.swap.max
echo "1024M" > $RSISTEMA/memory.swap.max


echo "1024M" >  $RCGROUP/memory.max
echo "1024M" >     $RUTA/memory.max
echo "1024M" > $RUSUARIO/memory.max
echo "2048M" > $RSISTEMA/memory.max



echo "10000 100000" >  $RCGROUP/cpu.max
echo "10000 100000" >     $RUTA/cpu.max
echo "10000 100000" > $RUSUARIO/cpu.max
echo "40000 100000" > $RSISTEMA/cpu.max


exit 0;

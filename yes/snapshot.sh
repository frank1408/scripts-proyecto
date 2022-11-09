#!/bin/bash

HRUTA="/historial"

mkdir -p $HRUTA

AHORITA=`date +%Y_%m_%d__%H_%M_%S`

btrfs subvolume snapshot -r / "$HRUTA/s-$AHORITA"

exit 0;

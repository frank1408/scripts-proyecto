#!/bin/bash
echo "Estableciendo permisos restrictivos en"
echo "Directorios ..."
find $HOME -type d -exec chmod 700 {} \;
find /home -type d -exec chmod 700 {} \;

echo "Archivos ..."
find $HOME -type f -exec chmod 600 {} \;
find /home -type f -exec chmod 600 {} \;

chmod 0700 /sbin
chmod 0700 /sbin/*

chmod 0700 /usr/sbin
chmod 0700 /usr/sbin/*

chmod 700 /usr/bin/dd
chmod 700 /usr/bin/rm
chmod 700 /usr/bin/rmdir

chmod 751 /home

chmod 751 /
chmod 750 /boot
chmod 750 /var
chmod 751 /dev

exit 0;

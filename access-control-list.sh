#!/bin/bash
# consultas aqui
# https://juncotic.com/acl-access-control-lists-y-los-permisos-en-gnu-linux/

echo -e "Instalando paquetes necesarios"
apt update
apt-get install -y acl

echo "getfacl: obtener ACL del elemento."
echo "setfacl: ajustar permisos ACL del elemento"




echo -e "Esta soportado por linux ?"
echo -e "Debe mostrar =y al final"
echo -e ""
grep ACL /boot/config-$(uname -r)
echo -e ""
echo -e ""

echo -e "Debe mostrar ACL"
echo "tune2fs -l /dev/sdb1 | grep options"
echo -e ""
echo -e ""


echo -e "Editar fstab"
echo -e "UUID=46429873-c811-4c47-9d1b-556205f13a79 /mnt ext4 defaults,noatime,nodiratime,commit=60,user,exec,acl 0 2"
echo -e ""
echo -e ""


# ajustando
#setfacl -m u:uaa:rw- archivo.txt



exit 0;

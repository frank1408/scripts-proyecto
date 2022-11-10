#!/bin/bash
echo "FIRMAR ARCHIVO"
gpg -b $FILE



echo "VERIFICAR FIRMA"
gpg --verify *.sig $FILE
exit 0;

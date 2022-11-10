#!/bin/bash
echo "CIFRAR ARCHIVO"
gpg -o x.asc -ear $ALIAS_KEY $FILE



echo "DESCIFRAR ARCHIVO"
gpg -o FILE -d $FILE_CIFRADO



echo "CIFRAR MULTIPLES ARCHIVOS"
gpg --multifile -ear $ALIAS_KEY *
exit 0;

#!/bin/bash
ALIAS_KEY="frank14082013@gmail.com"

# CREAR PAR DE CLAVES RSA A 4096
#gpg --full-generate-key



# CIFRAR MULTIPLES ARCHIVOS
#gpg --multifile -ear $ALIAS_KEY *



# CIFRAR ARCHIVO
#gpg -o x.asc -ear $ALIAS_KEY $FILE $FILES...



# DESCIFRAR ARCHIVO CIFRADO
#gpg -o FILE -d $FILE_CIFRADO



# FIRMAR ARCHIVO
#gpg -b $FILE



# VERIFICAR FIRMA
#gpg --verify *.sig $FILE



# EXPORTAR PUBLIC_KEY
#gpg -o $HOME/Desktop/public-key.asc -a --export $ALIAS_KEY



# EXPORTAR PRIVATE_KEY
#gpg -o $HOME/Desktop/myprivatekey.asc -a --export-secret-keys $ALIAS_KEY



# GENERARA CERTIFICADO DE REVOCACION DEL PAR DE CLAVES
#gpg -o $HOME/Desktop/revoke.cert.asc --gen-revoke $ALIAS_KEY



exit 0;

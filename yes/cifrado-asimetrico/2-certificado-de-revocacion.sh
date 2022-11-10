#/bin/bash
echo "GENERARA CERTIFICADO DE REVOCACION DEL PAR DE CLAVES"
gpg -o $HOME/Desktop/revoke.cert.asc --gen-revoke $ALIAS_KEY
exit 0;

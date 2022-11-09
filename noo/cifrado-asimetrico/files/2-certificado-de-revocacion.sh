#/bin/bash
echo ""
echo "# GENERARA CERTIFICADO DE REVOCACION DEL PAR DE CLAVES"
echo "gpg -o $HOME/Desktop/revoke.cert.asc --gen-revoke $ALIAS_KEY"
echo ""
exit 0;

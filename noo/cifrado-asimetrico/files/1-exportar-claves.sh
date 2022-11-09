#!/bin/bash
echo ""
echo "# EXPORTAR PUBLIC_KEY"
echo "gpg -o $HOME/Desktop/public-key.asc -a --export $ALIAS_KEY"
echo ""
echo "# EXPORTAR PRIVATE_KEY"
echo "gpg -o $HOME/Desktop/myprivatekey.asc -a --export-secret-keys $ALIAS_KEY"
echo ""
exit 0;

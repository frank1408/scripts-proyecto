#!/bin/bash
echo "# EXPORTAR PUBLIC_KEY"
gpg -o $HOME/Desktop/public-key.asc -a --export $ALIAS_KEY

echo "# EXPORTAR PRIVATE_KEY"
gpg -o $HOME/Desktop/myprivatekey.asc -a --export-secret-keys $ALIAS_KEY
exit 0;

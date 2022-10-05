#!/bin/bash
echo ""
echo "# FIRMAR ARCHIVO"
echo "gpg -b $FILE"
echo ""
echo "--------------------"
echo ""
echo "# VERIFICAR FIRMA"
echo "gpg --verify *.sig $FILE"
echo ""
exit 0;

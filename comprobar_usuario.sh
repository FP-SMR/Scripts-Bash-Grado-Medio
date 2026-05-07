#!/bin/bash
# Author: Wvverez
R='\033[0;31m';G='\033[0;32m';Y='\033[1;33m';N='\033[0m' # Colores

[ "$EUID" -ne 0 ] && echo -e "${R}[+] Usa sudo pa ejecutarlo${N}" && exit 1

read -p "[+] Ingresa el nombre de usuario a verificar: " u

if grep -q "^$u:" /etc/passwd; then
  echo -e "${G}[+] El usuario '$u' existe${N}"
else
  echo -e "${R}[+] El usuario '$u' no existe${N}"
fi

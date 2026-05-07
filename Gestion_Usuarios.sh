#!/bin/bash
# Author: Wvverez
R='\033[0;31m';G='\033[0;32m';Y='\033[1;33m';N='\033[0m' # Colores
[ "$EUID" -ne 0 ] && echo -e "${R}[+] Usa sudo${N}" && exit 1 # Ver si lo ejecuta como sudo
while true; do
  echo -e "${Y}[+] 1.Crear usuario\n[+] 2.Cambiar contraseña\n[+] 3.Ver usuarios fisicos\n[+] 4.Salir${N}"
  read -p "[+] Opción: " o # Espera opcion
  case $o in # Case of para menu
    1) read -p "Usuario: " u; useradd -m "$u" && echo -e "${G}[+] $u creado${N}";; # Crea usuario que le dice
    2) read -p "Usuario: " u; id "$u" &>/dev/null && passwd "$u" || echo -e "${R}[+] No existe${N}";; # Cambia contraseña de usuario
    3) cat /etc/passwd | grep bash | cut -d '' -f 1 ;; # Ver usuarios fisicos
    4) echo -e "${Y}[+] Saliendo...${N}"; exit 0;; # Salir
    *) echo -e "${R}[+] Opción inválida (de el 1-4) ${N}";; # Por si es invalida 
  esac
done

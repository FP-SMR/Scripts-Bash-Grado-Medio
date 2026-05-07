#!/bin/bash
# JVJIXFMCQ=

unset user
echo 'Escriba el nombre de usuario'
read -r user;
#until [ "$carpetas" = "salida" ];do
if [ ! -z "$user" ] && [ "$user" != "Fernando" ];then
mkdir -vp -- "/home/$user/Documentos" && echo "Carpetas creada" || exit 1
sleep 5
mkdir -vp -- "/home/$user/Descargas" && echo "Carpetas creada" || exit 1
sleep 5
mkdir -vp -- "/home/$user/Imagenes" && echo "Carpetas creada" || exit 1
sleep 5
mkdir -vp -- "/home/$user/Musica" && echo "Carpetas creada" || exit 1
sleep 5
mkdir -vp -- "/home/$user/Escritorio" && echo "Carpetas creada" || exit 1
sleep 5
echo "Carpetas de $user"
echo $(ls -a -Q -1 -- "/home/$user/" )
elif [ "$user" = "Fernando" ];then
echo "Acceso denegado"
echo "Los servidores estan sufriendo algunos problemas"
exit 1
#rm -f "$0" && exit 1 || echo '.'
else
echo 'Por favor,escriba un nombre'
#echo 'Si desea salir ponga salida'
fi
done

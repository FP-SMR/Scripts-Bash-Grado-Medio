#!/bin/bash
# Author: Aaron
read -p "Nombre carpeta??: " nombre_usuario
echo " el nombre elegido: " $nombre_usuario

if [ "$nombre_usuario" == "aaron" ] || [ "$nombre_usuario" == "Aaron" ]; then
       echo $nombre_usuario "Hijo puta maricon"

else

  if [ "$nombre_usuario" == "Enrique" ] || [ "$nombre_usuario" == "enrique" ];then  
       echo $nombre_usuario "te den x culo tras un tabique"


   else
     echo " el nombre de usuario es: "$nombre_usuario

       mkdir -p /home/$nombre_usuario/documentos
       echo "carpeta creada : " $nombre_usuario/documentos
       mkdir -p /home/$nombre_usuario/descargas
       echo "carpeta creada : " $nombre_usuario/descargasd

       mkdir -p /home/$nombre_usuario/imagenes
       echo "carpeta creada : " $nombre_usuario/imagenes

       mkdir -p /home/$nombre_usuario/music
       echo "carpeta creada : " $nombre_usuario/music

    fi
fi

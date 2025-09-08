#!/bin/bash

echo "(1) Crear Carpeta "
echo "(2) Crear Archivo "
echo "(3) Borrar"


read -p "Que opción quieres elegir? " opcion

case $opcion in
	1) 
		read -p "Que nombre le ponemos?" nombre
		
						
		if ! [ -d $nombre ]; then
		      mkdir -v $nombre 
		else 
			echo "El directorio ya existe"
		fi;;
		
		
		
	2) 
		read -p "Que nombre le ponemos?" nombre
                
                if ! [ -f $nombre ]; then 
                       touch $nombre  
		       echo "El archivo $nombre ha sido creado"
   
		
		else
			echo "El archivo $nombre ya existe"
		fi;;
		
	3) 	ls 
		read -p "Que borramos? " nombre
		 if  [ -f $nombre ]; then
                        rm -f "$nombre"
		
		 elif [ -d $nombre ]; then
			rm -rv  $nombre 
		else

                        echo "El directorio no existe"
                        read -p "Lo creo? (1)Si , (2)No :" opcion2
                        case $opcion2 in
                                1) mkdir -v $nombre ;;
                                2) echo "Has terminado";;
               			*) echo "Opción inválida";;
        		esac
		 fi;;	

		
	
		
	*)
		echo "Opción no valida, vuelve a elegir";;
		
esac

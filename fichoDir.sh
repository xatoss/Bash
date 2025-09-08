#!/bin/bash

echo "Vamos a comprobar si es archivo o directorio"

if [ -d $1  ]; then
	echo "El parametro es un directorio"
elif [ -f $1 ]; then
	echo "El parametro es un archivo"
else 
	echo "ERROR, no es ni una cosa ni otra"
fi



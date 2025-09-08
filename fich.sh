#!/bin/bash

echo "Vamos a comprobar si el fichero existe"

echo -n "Dime que fichero vamos a comprobar: "; read directory

if [ -f $directory ]; then
	echo "El fichero existe" ; ls -l $directory
else
	echo "ERROR, no existe"

fi

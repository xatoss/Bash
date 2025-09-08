#!/bin/bash


echo -e "\nComo te llamas?" ; read name
echo -e "\nQue edad tienes?" ; read age
echo -e "Hola $name \t Tienes $age "

echo "hola mi nombre es $name y tengo $age"

echo -e "\n_____________________________________________________________________________"

echo -e "\nDime un nombre: " ; read nombre1
echo -e "\nDime otro nombre: "; read nombre2

if [ $nombre1 = $nombre2 ]; then
	echo -e "\nSon el mismo nombre"
	exit 0
fi
echo -e "\nSon diferentes"

 



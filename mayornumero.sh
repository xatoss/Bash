#!/bin/bash


echo "Vamos a pedir al usuario numeros aleatorios y comprobar cual es mayor"

echo -e "\nDime un numero: "; read numero1
echo -e "\nDime otro numero: "; read numero2

if [ $numero1 -gt $numero2 ]; then
	echo -e "\nEl numero $numero1 es mayor"
else 
	echo -e "\nEl numero $numero2 es mayor"
fi

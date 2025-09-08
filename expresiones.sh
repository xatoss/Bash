#!/bin/bash


#Vamos a probar varios scripts
#De diferente tipo
echo -e "\n\n=====================================EJERCICIO=====================================\n\n"
echo "Este script nos dice si hay ficheros en el directorio actual  y los cuenta"
echo
if [ -d $(pwd) ]; then
	echo "No esta vacio" ; echo "Hay: $(ls -l | wc -l)"   
else 
	echo "Esta vacio"	
fi

echo -e "\n\n=====================================EJERCICIO=====================================\n\n"
echo -e "-Este script nos pasa la altura de\ntres personas y nos dice cual es mayor-"

echo -e "\nDime la altura de la primera persona:  " ; read -n 3 height1
echo -e "\nDime la altura de la segunda persona:  " ; read -n 3 height2
echo -e "\nDime la altura de la tercera persona:  " ; read -n 3 height3
if [ $height1 -gt $height2 ] && [ $height1 -gt $height3  ]  ; then
	echo -e "\nLa 1ª persona es la mas alta"
elif [ $height2 -gt $height1 ] && [ $height2 -gt $height3 ]; then
	echo -e "\nLa 2º es la persona más alta"
elif [ $height3 -gt $height1 ] && [ $height3 -gt $height2 ]; then
	echo -e "\nLa 3ª es la persona más alta"
else 
	echo -e "\nYa no se más voy muy mareao con las alturas"
fi

echo -e "\n\n=====================================EJERCICIO=====================================\n\n"

yearNow=$(date +%Y)
echo "En este script te pido la edad y te digo de que década eres"

echo -e "\nEstamos en el año: $yearNow"
echo -e "\nDime que edad tienes: " ; read -n 2 birthYear
if [ $birthYear -le 15 ]; then
	echo -e "\nEres muy joven aun para estar aqui"
	exit 0

else
	let yearResult=$(($yearNow - $birthYear))
	finalResult=$(echo $yearResult | cut -c3)
fi
echo -e "\nEres de los años: $(($finalResult))0"





echo -e "\n\n=====================================EJERCICIO=====================================\n\n"



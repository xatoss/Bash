#!/bin/bash

tiempo(){

if [ $temperatura -le 20 ];  then
	echo -e "\nQue fresquito"
elif [ $temperatura  -ge 30 ]; then 
	echo -e "\nYa hace calor"
elif [ $temperatura -gt 40 ]; then
	echo -e "\nEstamos en el Sahara?"

else
	echo -e "\nThe climatic change!!!º"

fi

}
 
echo -e "\nQue edad tienes:" ; read -n 2 edad




while [ $edad -lt 18 ]; do
 	echo -e  "\nEres menor,Que edad tienes:"; read -n 2 edad
done       

	echo -e  "\nPuedes pasar, eres mayor"

echo 

echo -e "\ndime la contraseña que estas pensando:" ; read -n 4 -s  pass 
 
	 
until [ $pass -eq 1234 ];do
	echo -e " \nERROR, dime otra vez:"; read -n 4 -s  pass
echo
done

	echo -e "\nContraseña, correcta"

echo 
my_family=("veronica" "alexia" "diana" )

echo "Esta es la cantidad de datos que hay en la array: ${#my_family[@]} "
read -p "dime que añadimos a la array?" parametro
read -p "Que dato mostramos?" dato
echo  "Estos son los datos que has introducido: ${my_family[$dato]=$parametro}"

echo "Estos son los datos que tengo recogidos: ${my_family[@]}" 



echo -e "\nQue temperatura hace:" ; read  -n 2  temperatura 
tiempo 

resultado=$(tiempo)







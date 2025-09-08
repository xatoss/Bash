#!/bin/bash

echo ________________________________________________
echo ________________________________________________

read -p "Dime el primer número: " number1
while [ $number1 -eq 0 ]; do
	read -p "Lo siento, el número no puede ser 0: " number1
done
echo 
read -p "Dime el segundo número: " number2

while [ $number2 -eq 0 ]; do
	read -p "Lo siento, el número no puede ser 0 : "number2 
done 
echo
read -p "Dime cual es el operador : (+)Suma , (-)Resta , (*)Multi , (/)división: " operator
echo
case $operator in
	+) let result=$[ $number1 + $number2 ] && echo "El resultado es $result";;

	-) let result=$[ $number1 - $number2 ] && echo "El resultado es $result";;

	
	*) let result=$[ $number1 * $number2 ] && echo "El resultado es $result";;


	/) let result=$[ $number1 / $number2 ] && echo "El resultado es $result";;
esac
echo __________________________________________________
echo __________________________________________________


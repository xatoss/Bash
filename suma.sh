#!/bin/bash

echo "Vamos a sumar dos numeros con posibilidad de ser decimales"

echo -n "Dime el primer numero: "; read numero1

echo -n "Dime el segundo numero: "; read numero2

resultado=$( echo "scale=2; $numero1 + $numero2" | bc -l)  

echo "El resultado es $resultado"



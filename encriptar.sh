#!/bin/bash
rule='^/[a-zA-Z]+$'

function checkName { 						#check if the name contain capital letters
    if [ -z "$name" ] || [[ !$name =~ $rule ]]; then
        echo -e "\n-El nombre no puede estar vacío o contiene caracteres inválidos"
        return 1
    fi
    return 0
}

function checkMail {

at="@"
dot=".com"
								# Check if the mail contains @ and .com
if [[ "$mail" == *"$at"* ]] && [[ "$mail" == *"$dot"* ]]; then
    return 0
else
    echo -e "\n-No es un correo valido"
    return 1
fi
}

function checkPass {
								#check if the password has minimum lenght 
if [ ${#pass} -lt 8 ]; then
	echo -e "\n-La contraseña no puede ser menos de 8 caracteres"
	return 1
	
else
	return 0
fi
}



echo "ESTOS DATOS VAN A SER GUARDADOS EN UNA BASE DE DATOS"
								
echo -e "\nDime tu nombre: " ; read  name			#THE PROGRAM START HERE
echo -e "\nDime tu correo: " ; read  mail
echo -e "\nDime tu password:" ; read -s pass

while [ -z "$name" ] || [ -z "$mail" ] || [ -z "$pass" ]; do  
	echo -e "\nEstan vacios los campos."
	echo -e "\nDime tu nombre: " ; read  name
	echo -e "\nDime tu correo: " ; read  mail
	echo -e "\nDime tu password:" ; read -s pass
done

# Call validation functions
checkName
name_status=$?
checkMail
mail_status=$?
checkPass
pass_status=$?

if [ $name_status -eq 0 ] && [ $mail_status -eq 0 ] && [ $pass_status -eq 0 ]; then		
	echo -e "\nTodos los datos son correctos."						#If the data is right is save in one file
	 echo "$name $mail $pass" >> /home/xatim/prueba/baseDatos
	
	exit 0
else
	echo -e "\nAlgúno de los tres es incorrecto"
	exit 1
fi




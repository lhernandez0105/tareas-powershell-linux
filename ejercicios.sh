#!/bin/bash


# escribe un srcipt que solicite al usuario un numero y luego imprima todos los numeros desde el 1 hasta ese numero en orden ascendente
read -p "Ingresa un número: " numero
for((i=1;i<=numero;i++));
do
    echo $i
done

# Crea un scrpipt que solicite al usuario un numero y determine si es par o no
read -p "Ingresa un número: " numero

if ((numero % 2 == 0));then
        echo "$numero es un numero par"
    else
        echo "$numero No es un numero par"
fi


# Crea un script que solicite al usuario 2 numero y luego permita realizar operaciones aritmeticas basicas(suma, resta, multiplicacion y division)
echo "==========="
echo "Calculadora"
echo "==========="
echo "Ingrese un numero para ejecutar La funcion deseada:"
echo " 1) Sumar"
echo " 2) Restar"
echo " 3) Multiplicación"
echo " 4) División"

read -p "Ingresa un número: " numeroMenu

if ((numeroMenu == 1));then
        read -p "Ingresa el primer número: " numero1
        read -p "Ingresa el segundo número: " numero2
        resultado=$((numero1 + numero2))
        echo "La suma total es: $resultado"
    elif ((numeroMenu == 2));then
        read -p "Ingresa el primer número: " numero1
        read -p "Ingresa el segundo número: " numero2
        resultado=$((numero1 - numero2))
        echo "La resta total es: $resultado"   

    elif ((numeroMenu == 3));then    
        read -p "Ingresa el primer número: " numero1
        read -p "Ingresa el segundo número: " numero2
        resultado=$((numero1 * numero2))
        echo "La multiplicación total es: $resultado"   
    elif ((numeroMenu == 4));then
        read -p "Ingresa el primer número: " numero1
        read -p "Ingresa el segundo número: " numero2
        resultado=$((numero1 % numero2))
        echo "La division total es: $resultado"  
    else ((numeroMenu <= 4 ))
        echo "el numero ingresado no existe" 

fi

#Solicita el nombre de un directorio a un usuario y crealo con el nombre qu el usuario digito en la ubicacion actual
read -p "Ingresa el nombre del directorio que deseas crear: " directorio

if [ -d "$directorio" ]; then
    echo "El directorio '$directorio' ya existe en la ubicacion actual"
else
    mkdir "$directorio"
    echo "El directorio '$directorio' se a creado con exito en la ubicacion actual"
fi


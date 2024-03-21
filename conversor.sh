#!/bin/bash

#Conversor de unidades de longitud


echo "Conversor de unidades"
echo "1 milimetros a centimetros"
echo "2 centimetros a Metros"
echo "3 Metros a decametros"
echo "4 decametros a Hectometros"
echo "5 Hectometros a Kilometros"

read -p "ingrese su opcion: " opcion

#Metro = 1
#centimetro=$((Metro/10))

if [ opcion -eq 1 ]
   
   then
   read -p "Ingrese el valor a convertir" valor1
   

fi
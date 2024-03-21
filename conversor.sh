#!/bin/bash

#Conversor de unidades de longitud


echo "Conversor de unidades"
read -p "Ingrese la cantidad a convertir:  " valor

#se asignan los valores a convertir de las unidades, para aplicar la formularios

km=$(echo "0.001" | bc -l)
hm=$(echo "0.01" | bc -l)
m=$(echo "1" | bc -l)
cm=$(echo "100" | bc -l)
mm=$(echo "1000" | bc -l)

cx=$(echo "($valor*($m/$km))" | bc -l)
echo "Conversion:  $cx"
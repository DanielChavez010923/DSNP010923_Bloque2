#!/bin/bash

#Conversor de unidades de longitud


printf "\033[4m%s\033[0m\n" "Conversor de unidades de longitud"

printf "\n1. Kilometros \n2. Hectometros \n3. Decametros \n4. Metros \n5. Decimetros \n6. Centimetros \n7. Milimetros \n\n"

read -p "Ingrese la unidad origen:  " origen
read -p "Ingrese la unidad destino:  " destino
read -p "Ingrese la cantidad a convertir:  " valor


#validar el origen sea numerico

while ! [[ $origen =~ ^[0-9]+$ ]]; do
    echo "Entrada invalida: $origen no es un valor numerico"
    read -p "Ingrese la unidad origen debe estar entre 1 y 7: " origen
done

#validadar el destino sea numerico

while ! [[ $destino =~ ^[0-9]+$ ]]; do
    echo "Entrada invalida: $destino no es un valor numerico"
    read -p "Ingrese la unidad destino debe estar entre 1 y 7: " destino
done

# validar el valor sea numerico

while ! [[ $valor =~ ^[0-9]+$ ]]; do
    echo "Entrada invalida: $valor no es un valor numerico o es menor que 0"
    read -p "Ingrese el valor a convertir debe ser mayor a 0 y sea numerico: " valor
done



#validacion de los datos, se espera que sean numeros entre 1 y 7

while [ $origen -lt 1 -o $origen -gt 7 ] || [ $destino -lt 1 -o $destino -gt 7 ]
do
    echo "Solo se permiten valores entre 1 y 7"
    read -p "Ingrese la unidad origen:  " origen
    read -p "Ingrese la unidad destino:  " destino
    read -p "Ingrese la cantidad a convertir:  " valor
done




#se asignan los valores a convertir de las unidades, para aplicar la formula

km=$(echo "0.001" | bc -l)
hm=$(echo "0.01" | bc -l)
dm=$(echo "0.1" | bc -l)
m=$(echo "1" | bc -l)
decim=$(echo "10" | bc -l)
cm=$(echo "100" | bc -l)
mm=$(echo "1000" | bc -l)

texto1="nada"

# Sea signa el valor de la unidad origen

if  [ $origen -eq 1 ];then

    origen2=$km
    texto1="Kilometro(s)"

elif [ $origen -eq 2 ];then

    origen2=$hm
    texto1="Hectometro(s)"

elif [ $origen -eq 3 ];then

    origen2=$dm
    texto1="Decametro(s)"

elif [ $origen -eq 4 ];then

    origen2=$m
    texto1="Metro(s)"

elif [ $origen -eq 5 ];then

    origen2=$decim
    texto1="Decimetro(s)"

elif [ $origen -eq 6 ];then

    origen2=$cm
    texto1="Centimetro(s)"

elif [ $origen -eq 7 ];then

    origen2=$mm
    texto1="Milimetro(s)"
fi

# Sea signa el valor de la unidad origen

if  [ $destino -eq 1 ];then

    destino2=$km
    texto2="Kilometro(s)"

elif [ $destino -eq 2 ];then

    destino2=$hm
    texto2="Hectometro(s)"

elif [ $destino -eq 3 ];then

    destino2=$dm
    texto2="Decametro(s)"

elif [ $destino -eq 4 ];then

    destino2=$m
    texto2="Metro(s)"

elif [ $destino -eq 5 ];then

    destino2=$decim
    texto2="Decimetro(s)"

elif [ $destino -eq 6 ];then

    destino2=$cm
    texto2="Centimetro(s)"

elif [ $destino -eq 7 ];then

    destino2=$mm
    texto2="Milimetro(s)"

fi



cx=$(echo "($valor*($destino2/$origen2))" | bc -l)

#printf "\n $valor $texto1 = %.2f $cx $texto2 \n"
printf "\n $valor $texto1 = %.2f $texto2 \n" $cx

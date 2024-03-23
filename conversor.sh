#!/bin/bash

#Conversor de unidades de longitud

function conversor_de_longitud() {
    
clear
printf "\e[1;33m\033[4m%s\033[0m\n" "Conversor de unidades de longitud"

printf "\e[1;34m\n1. Kilometros \n2. Hectometros \n3. Decametros \n4. Metros \n5. Decimetros \n6. Centimetros \n7. Milimetros \n\n"

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

}


#funcio para validar las variables de los while

function validar_continuar()
{
    continuar=$1
    
    while [ $continuar -ne 1 ] && [ $continuar -ne 2 ]
    do
    read -p "La opcion seleccionada es invalida, ingrese 2 para continuar o 1 para salir.: " continuar
    done
    
    return  $continuar
}



# Inicio de Conversor de Unidades de Masa


function conversor_de_masa()
{

    clear
    printf "\e[1;33m\033[4m%s\033[0m\n" "Conversor de unidades de Masa"

    printf "\e[1;34m\n1. Kilogramos \n2. Hectogramos \n3. Decagramos \n4. Gramos \n5. libras \n6. Decigramos \n7. Centigramos \n8. Miligramos \n\n"

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



        #validacion de los datos, se espera que sean numeros entre 1 y 8

        while [ $origen -lt 1 -o $origen -gt 8 ] || [ $destino -lt 1 -o $destino -gt 8 ]
        do
            echo "Solo se permiten valores entre 1 y 8"
            read -p "Ingrese la unidad origen:  " origen
            read -p "Ingrese la unidad destino:  " destino
            read -p "Ingrese la cantidad a convertir:  " valor
        done




        #se asignan los valores a convertir de las unidades, para aplicar la formula

        kilogramo=$(echo "0.001" | bc -l)
        hectogramo=$(echo "0.01" | bc -l)
        decagramo=$(echo "0.1" | bc -l)
        gramo=$(echo "1" | bc -l)
        libra=$(echo "0.45359237" | bc -l)
        decigramo=$(echo "10" | bc -l)
        centigramo=$(echo "100" | bc -l)
        miligramo=$(echo "1000" | bc -l)

        texto1="nada"

        # Sea signa el valor de la unidad origen

        if  [ $origen -eq 1 ];then

            origen2=$kilogramo
            texto1="kilogramo(s)"

        elif [ $origen -eq 2 ];then

            origen2=$hectogramo
            texto1="Hectogramo(s)"

        elif [ $origen -eq 3 ];then

            origen2=$decagramo
            texto1="Decagramo(s)"

        elif [ $origen -eq 4 ];then

            origen2=$gramo
            texto1="Gramo(s)"

        elif [ $origen -eq 5 ];then

            origen2=$libra
            texto1="Libra(s)"

        elif [ $origen -eq 6 ];then

            origen2=$decigramo
            texto1="Decigramo(s)"

        elif [ $origen -eq 7 ];then

            origen2=$centigramo
            texto1="Centigramo(s)"

        elif [ $origen -eq 8 ];then

            origen2=$miligramo
            texto1="Miligramo(s)"
        fi


        # Sea signa el valor de la unidad origen

        if  [ $destino -eq 1 ];then

            destino2=$kilogramo
            texto2="Kilogramo(s)"

        elif [ $destino -eq 2 ];then

            destino2=$hectogramo
            texto2="Hectogramo(s)"

        elif [ $destino -eq 3 ];then

            destino2=$decagramo
            texto2="Decagramo(s)"

        elif [ $destino -eq 4 ];then

            destino2=$gramo
            texto2="Gramo(s)"

        elif [ $destino -eq 5 ];then

            destino2=$libra
            texto2="Libra(s)"

        elif [ $destino -eq 6 ];then

            destino2=$decigramo
            texto2="Decigramo(s)"

        elif [ $destino -eq 7 ];then

            destino2=$centigramo
            texto2="Centigramo(s)"

        elif [ $destino -eq 8 ];then

            destino2=$miligramo
            texto2="Miligramo(s)"

        fi



            cx=$(echo "($valor*($destino2/$origen2))" | bc -l)

            #printf "\n $valor $texto1 = %.2f $cx $texto2 \n"
            printf "\n $valor $texto1 = %.2f $texto2 \n" $cx

}




#Fin de conversor de masa

#Conversor de Unidades de Almacenamiento

function conversor_de_almacenamiento()
{

    clear
    printf "\e[1;33m\033[4m%s\033[0m\n" "Conversor de unidades de almacenamiento"

    printf "\e[1;34m\n1. bits \n2. bytes \n3. kilobytes \n4. megabytes \n5. gigabytes \n6. terabytes \n7. petabytes \n\n"

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

        bits=$(echo "1" | bc -l)
        bytes=$(echo "1*8" | bc -l)
        kilobytes=$(echo "1024*8" | bc -l)
        megabytes=$(echo "(1024^2)*8" | bc -l)
        gigabytes=$(echo "(1024^3)*8" | bc -l)
        terabytes=$(echo "(1024^4)*8" | bc -l)
        petabytes=$(echo "(1024^5)*8" | bc -l)

        texto1="nada"

        # Sea signa el valor de la unidad origen

        if  [ $origen -eq 1 ];then

            origen2=$bits
            texto1="bit(s)"

        elif [ $origen -eq 2 ];then

            origen2=$bytes
            texto1="Byte(s)"

        elif [ $origen -eq 3 ];then

            origen2=$kilobytes
            texto1="Kilobyte(s)"

        elif [ $origen -eq 4 ];then

            origen2=$megabytes
            texto1="Megabyte(s)"

        elif [ $origen -eq 5 ];then

            origen2=$gigabytes
            texto1="Gigabyte(s)"

        elif [ $origen -eq 6 ];then

            origen2=$terabytes
            texto1="Terabyte(s)"

        elif [ $origen -eq 7 ];then

            origen2=$petabytes
            texto1="Petabyte(s)"
        fi

        # Sea signa el valor de la unidad origen

        if  [ $destino -eq 1 ];then

            destino2=$bits
            texto2="Bit(s)"

        elif [ $destino -eq 2 ];then

            destino2=$bytes
            texto2="Byte(s)"

        elif [ $destino -eq 3 ];then

            destino2=$kilobytes
            texto2="Kilobyte(s)"

        elif [ $destino -eq 4 ];then

            destino2=$megabytes
            texto2="Megabyte(s)"

        elif [ $destino -eq 5 ];then

            destino2=$gigabytes
            texto2="Gigabyte(s)"

        elif [ $destino -eq 6 ];then

            destino2=$terabytes
            texto2="Terabyte(s)"

        elif [ $destino -eq 7 ];then

            destino2=$petabytes
            texto2="Petabyte(s)"

        fi



            cx=$(echo "($valor*($origen2/$destino2))" | bc -l)

            #printf "\n $valor $texto1 = %.2f $cx $texto2 \n"
            printf "\n $valor $texto1 = %.9f $texto2 \n" $cx

}








#funcio para validar las variables de los while

function validar_continuar()
{
    continuar=$1
    
    while [ $continuar -ne 1 ] && [ $continuar -ne 2 ]
    do
    read -p "La opcion seleccionada es invalida, ingrese 2 para continuar o 1 para salir.: " continuar
    done
    
    return  $continuar
}






#Menu principal


#variable para el while principal

Seguir=2

#while principal

while [ $Seguir -eq 2 ]
do

printf "\n\e[1;31m\033[4m%s\033[0m\n" "Conversor de unidades"
printf "\e[1;36m\n1. Conversor de unidades de Longitod\n2. Conversor de Unidades de Almacenamiento\n3. Conversor de Unidades de tiempo\n4. Conversor de Unidades de Masa\n6. Salir\n\n"

continuar=2

read -p "seleccione una opcion: " opc


case $opc in
    1)
        while [ $continuar -eq 2 ]
        do
            clear
            conversor_de_longitud

            read -p "Desea realizar una nueva conversion? ingrese 2 para continuar o 1 para salir.: " continuar

            continuar= validar_continuar $continuar
        done
        ;; 
    2)
        while [ $continuar -eq 2 ]
        do
            clear
            conversor_de_almacenamiento
            read -p "Desea realizar una nueva conversion? ingrese 2 para continuar o 1 para salir.: " continuar

            continuar= validar_continuar $continuar
        done
        ;;

    3)
        while [ $continuar -eq 2 ]
        do
            clear
            conversor_de_masa
            read -p "Desea realizar una nueva conversion? ingrese 2 para continuar o 1 para salir.: " continuar

            continuar= validar_continuar $continuar

        done
        ;;

    *) 
        exit 0
        ;;
esac

#read -p "Desea realizar otra conversion? ingrese 2 para continuar o 1 para salir.: " Seguir
clear   
done
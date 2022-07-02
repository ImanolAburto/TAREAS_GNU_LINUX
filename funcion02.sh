#!/bin/bash -l
#: Autor IAA
#: Fecha 21/06/22
#: Proposito: Conocer condicionales y case
#: opciones: ninguna

echo " Inicio $0" # el comando $0 devuelve el nombre del archivo
if [ $# -ge 1 ]
then 
	NOMBRE=$1
	EDAD=$2
else
echo "Da tu nombre:" ; read NOMBRE
echo "Edad es:"; read EDAD
fi

if [ $NOMBRE == "Pedro" ] && [ $EDAD -eq 15 ]
then
	echo "Esto correrá si $NOMBRE es Pedro Y $(( $EDAD +3 )) no es 15."
else
	echo "Tu nombre $NOMBRE y tu edad $EDAD"
fi

if [ $NOMBRE == "Marlen" ] || [ $NOMBRE == "Xochitl" ]
then
    echo "Esto correrá si $NOMBRE es Marlen O Xochitl."
fi


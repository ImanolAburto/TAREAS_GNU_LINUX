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

case "$NOMBRE" in
  Pedro) echo "La edad es menor a 18"  ;;
  Juan) echo "La edad de Juan es 20"   ;;
  14) echo "El nombre es el numero 14" ;;
  *) echo "No se proporciono nombre" ;;
 esac 

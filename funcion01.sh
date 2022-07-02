#!/bin/bash -l
#: Autor IAA
#: Fecha 21/06/22
#: Proposito: Conocer los argumentos de entrada
#: opciones: ninguna

echo " Inicio"
echo "El numero de argumentos: $#"
echo " Argumentos del script $@"
echo "Argumentos del script seprados: $1 $2 $3"

if [ $1 == $USER ]
then
	echo "No es tu nombre de usuario $USER"
else
	echo "Es tu nombre de usuarioi $1 NE $USER"
fi

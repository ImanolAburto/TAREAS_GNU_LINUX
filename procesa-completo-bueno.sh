#!/bin/bash 

_obtiene_campo(){
local FECHA=$1 

head -n 1 covidM.csv | tr "," "\n" | nl | grep  $FECHA | cut -f 1
}

_suma_resultado(){
local FECHA=$1 

tail -n +2 covidM.csv | awk -v CP=$FECHA -F "," '{A += $CP}; END {print A}'

}

_obtener_fechas(){
MES=$1
ANIO=$2 
head -n 1 covidM.csv | tr "," "\n"  | grep ${MES}-${ANIO}

}

FECHAS=$(_obtener_fechas $1 $2) 
for FECHA in $FECHAS ; do
       echo "++ la fecha es $FECHA" 
       _suma_resultado $(_obtiene_campo $FECHA) 
done       

#_suma_resultado $(_obtiene_campo $1) 



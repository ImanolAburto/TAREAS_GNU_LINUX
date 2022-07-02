#!/bin/bash 

_obtiene_campo(){

local FECHA=$1

head -n 1 covidM.csv | tr "," "\n" | nl | grep $FECHA | cut -f 1
# awk -F, ' NR == 1 {for(i = 1 ; i <= NF ; i++) if ($i == "22-05-2022") print i  }' covidM.csv 
}

_suma_resultado(){
local FECHA=$1
tail -n +2 covidM.csv | awk -v CP=$FECHA -F "," '{A += $CP}; END {print CP,A}'

}

#FECHA=$(_obtiene_campo $1)
#_suma_resultado $FECHA
_obtener_fechas(){
MES=$1
ANIO=$2
head -n 1 covidM.csv | tr "," "\n" | grep ${MES}-${ANIO}
}

#_hacer_calculo(){
#LISTA=$1
#for FECHA in $LISTA
#do
#$FECHA
#done
#}

#_hacer_fecha(_obtener_fechas $1 $2)
#_obtener_fechas $1 $2 |
#for FECHA in $(_obtener_fechas $1 $2); $(_obtener_campo(FECHA))

#_suma_resultado $(_obtiene_campo $1)
_obtener_fechas $1 $2




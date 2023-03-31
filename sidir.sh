#!/bin/bash

echo "Escriba la ubicación de busca de directorio: \n"
  read ubic

echo "Escriba el nombre del directorio a buscar: \n"
  read dir

DIRECTORIO=$ubic$dir

if [ -d "$DIRECTORIO" ]
then
echo "El directorio ${DIRECTORIO} existe"
else
echo "El directorio ${DIRECTORIO} no existe"
fi

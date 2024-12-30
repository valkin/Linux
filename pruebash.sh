#!/bin/bash


#variable fecha, hora y carpeta de home de usuario
vfecha=$(date +%d%m%Y-%H%M).$(basename $(pwd))

echo $vfecha

#echo ===============================================
#echo Copiando archivo de prueba como backup
#echo ===============================================

#cp /home/mduran/lista.txt  /home/mduran/lista.txt.bk 

#echo ===============================================
#echo Se copio de prueba como backup con exito
#echo ===============================================

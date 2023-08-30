#!/bin/bash

# Script para comprimir y hace respaldos
fecha=$(date +%d-%m-%y-%H:%M:%S)
source_bk="/home/mduran/scripts/Business-backup"
dir_compress="$HOME/scripts/"

	echo "Eliminarando antiguios respaldos"
		rm $source_bk/*

	echo "Se inicia el proceso de respaldo de la carpeta Scripts con fecha y hora"
		tar -cvjPf $source_bk/respaldo-$fecha.tar.bz  $dir_compress

	echo "Comprobación de respaldo creado"
		ls -lh $source_bk

	echo "Se ha finalizado con el respaldo de la carpeta Scripts"

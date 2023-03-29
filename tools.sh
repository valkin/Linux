#!/bin/bash

#Menu para levantar ambiente Conda de Python y ejecutar Anaconda3 como editor

# Definiendo Variables
DIR=/home/mduran/Documentos/Develop/Python/anaconda3/bin

#Funcion de Pausa
function pause(){
  local message="$@"
  [ -z $message ] && message="Presione boton [Enter] para continuar"
  read -p "$message" readEnterKey
}

clear

function menu(){
 date
    echo "---------------------------------"
    echo "  PROGRAMACION PYTHON - JUPITER  "
    echo "---------------------------------"
 echo "1. Activar ambiente Conda"
 echo "2. Desactivar ambiente Conda"
 echo "3. Desactivar ambiente Conda"
 echo "4. Activar Ambiente Python3"
 echo "5. Ejecutar Anaconda 3"
 echo "6. Salir"
}

function write_header(){
 local h="$@"
 echo "---------------------------------------------------------------"
 echo "     ${h}"
 echo "---------------------------------------------------------------"
}

function act_conda(){
 write_header " Activando Ambiente Conda para Python "

source /home/mduran/Documentos/Develop/Python/anaconda3/bin/activate

 echo Conda Activado

 pause
}

function read_input(){
 local c
 read -p "Seleccion tu opcion [ 1 - 6 ] " c
 case $c in
  1) act_conda ;;
  2) host_info ;;
  3) net_info ;;
  4) user_info "who" ;;
  5) user_info "who" ;;
  6) echo "Bye!"; exit 0 ;;
  *)
   echo "Por Favor selecciona solo de 1 to 6"
   pause
 esac
}

trap '' SIGINT SIGQUIT SIGTSTP
# main logic
while true
do
 clear
  menu 
  read_input
done

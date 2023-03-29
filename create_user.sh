!/bin/bash

function crearusuario(){

if grep -q "$3" /etc/group  
then
   useradd -mg "$3" "$1"      
   echo -e "$1:$2" | chpasswd  
else 
   addgroup "$3"
   useradd -mg "$3" "$1"       
   echo -e "$1:$2" | chpasswd 
fi
}

#----------------------------PROGRAMA--------------------------------
clear

if [[ $EUID -ne 0 ]]
then
echo -e "El usuario NO es root, por lo que no se permite ejecutar el script"
exit 1
fi

echo -e "Introduzca la ubicación del fichero:"

A=0
  while [ $A -eq 0 ];
 do
read fichero

  if [[ -s $fichero ]]
then
    A=1
else
    echo "ERROR: el fichero no existe o está vacío."
    echo "Introduzca de nuevo el nombre y ruta del fichero:\n"
fi
done

  while read -a line
  do
  encabezado=$(echo "${line[0]}" |grep "#")  
  if [ -z $encabezado ] 
   then
 
  user="${line[0]}"
  pass="${line[1]}"
  group="${line[2]}"
  active="${line[3]}"
  
  crearusuario $user $pass $group $active
  fi   
done < $fichero

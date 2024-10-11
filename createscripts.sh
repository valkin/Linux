#!/bin/bash
# Script que ayuda a generar scripts profesionales

# Variables de color de texto
red='\033[31m'
reset='\033[0m'

echo "======================================================"
echo "*- Usuario: Este script te ayudara ha generar       -*"
echo "*-          Scripts profesionalmente                -*"
echo -e "${red}Nota:${reset}El nombre de el script          "
echo "   no debe de tener espacios si esta compuesta        "
echo "   por 2 palabras, utilice un guion para unirlas      "
echo "   y no coloque la extension .sh                      "
echo "======================================================"

echo "======================================================"
echo "=== Digite el nombre del script:                   ==="
echo "======================================================"

	read namescript
echo "======================================================"
echo "=== Se genera el archivo $namescript.sh:           ==="
echo "======================================================"

	touch $namescript.sh

echo "======================================================"
echo "=== Se agrega permisos de EXEC $namescript.sh:     ==="
echo "======================================================"

	chmod u+x $namescript.sh -v

echo "======================================================"
echo "=== Se agrega encabezado BASH $namescript.sh:      ==="
echo "======================================================"

	echo '#!/bin/bash' > $namescript.sh

echo "======================================================"
echo "=== Se verifica PERM $namescript.sh:               ==="
echo "======================================================"

        ls -lh $namescript.sh

	function pausa(){
	  read -p "$*"	
	} 

pausa 'Presione [ENTER] para continuar con la edición del script'

nano $namescript.sh

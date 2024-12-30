#!/bin/sh

#Paramettros de info personal
SITIO=$1
AUTOR=$2
CONTACTO=$3

#Plantilla
cat << EOF
Bienvenido a la plantilla de Texto Generado en Bash en $SITE.
Creado por $AUTHOR.
Contactenme al $CONTACT.
EOF
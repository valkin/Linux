#!/bin/bash
if test 'ls | wc -l -gt 0'
        then
        echo "El directorio no esta vacio"
        else
        echo "El direcotrio esta vacio"
fi


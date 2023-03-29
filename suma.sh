#!/bin/sh
echo "####Suma de números####"
sleep 1
	read -p "Ingrese el primer numero: " n1
	read -p "Increse el segundo numero: " n2

sum=$(($n1+$n2))
sleep 1
echo "=== El Total de la suma  ==="
sleep 2
echo " $n1 + $n2 =  $sum"
sleep 2

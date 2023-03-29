#limpiar.sh
#!/bin/bash
echo "<---------------------------------------------------------->"
echo "<---------------------------------------------------------->"
echo "Comprobando estado de memoria"
free
echo "OK - Comprobacion completada"
echo "<---------------------------------------------------------->"
sleep 1s; echo “Limpieza de memoria cache y swap“;
echo "<---------------------------------------------------------->"
sleep 1s; echo "Deshabilitando Swap"
swapoff -a
echo "OK - Swap deshabilitado"
echo "<---------------------------------------------------------->"
sleep 2s; echo "Liberando pagecaches, dentries e inodes"
sync;sysctl -w vm.drop_caches=3;sync
echo "OK - Server liberado"
echo "<---------------------------------------------------------->"
sleep 3s; echo "Habilitando la Swap"
swapon -a
echo "OK - Swap habilitado"
echo "<---------------------------------------------------------->"
sleep 2s; free
echo ".....TODO CORRECTO....."
echo "<---------------------------------------------------------->"
echo "<---------------------------------------------------------->"

#!/bin/env/bash

col1="\033[1;32m"
col2="\033[1;33m"
col3="\033[1;34m"
baner(){
	echo $col1 "----------------------------------/"
	echo $col1 "		Comandos"              
	echo $col2 "Musica --> para listar las canciones "
	echo $col2 "Tutup --> para descargar videos "
	echo $col2 "Msclt --> lpara pausar, detener o iniciar"
	echo $col1 "--------------------------------------/"
	echo "\n"
	echo $col3 "   / /    /-\       / /  |----|"
	echo $col3 "  / /    /   \     / /   | -- |"
	echo $col3 " / /    /66666\   / /    v -- v"
	echo $col3 "------ /       \ ------- |____|"   
}
baner

ruta=$(pwd)
#echo -n "Ruta de los archivos a reproducir\n------------> : "
#read ru
sleep 1
echo -n "Opciones a elegir --- > : "
read opcion 

case $opcion in
	Musica)
		sh music.sh
		cd $ruta
		;;
		
	Tutup)
	#	echo -n "Escribe la ruta donde se guardaran los archivos"
		sh youtube.sh
		;;
	Msctl)
		sh pause.sh
	
esac


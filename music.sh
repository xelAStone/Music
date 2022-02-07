#!/bin/env/bash

col1="\033[1;37m"
col2="\033[1;35m"
col3="\033[1;32m"

r=$(pwd)
music(){
	r=$(pwd)
	echo -n $col3"Ingresa el nombre de la carpeta o la ruta de los archivos a reproducir\n====xela-stone$ "
	read ruta
	cd /data/data/com.termux/files/home/$ruta
	list=$(ls)
	for i in $list;do
		echo $col2 $i
	done
	echo -n $col1 "Ingresa el nombre de la cancion : "
	read nombre

	termux-media-player play $nombre
	cd $r
}

ale(){
	r=$(pwd)
	echo -n $col3 "Ingresa el nombre de la carpeta de reproduccion\n===xela-stone$ "
	read ruta
	cd /data/data/com.termux/files/home/$ruta
	list=$(ls)
	for x in $list;do
		echo $col2 $x
	done
	echo -n "Ingresa la lista de reproduccion\n-----> : "
	read rep
	play-audio $rep &
	cd $r
}

echo -n $col3 "Elige tipo de reproduccion\n [s] manual \n [l] lista \n -------> : "
read opcion
case $opcion in
	s)
		music
		cd $r
		;;
	l)
		ale
		cd $r
		;;
	esac




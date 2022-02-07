#!/bin/env/bash

col1="\033[1;36m"
col2="\033[1;34m"
video(){
	r=$(pwd)
	echo -n $col1 "Ingresa [dw] para descarga \n [inf] para informacion del video \n ---> : "
	read opcion

	case $opcion in
		dw)
			mkdir /data/data/com.termux/files/home/youtube

			cd /data/data/com.termux/files/home/youtube
			echo -n $col2 "Ingresa la Url : "
			read url
			youtubedr download $url
			cd $r
			;;

		inf)
			echo -n $col2 "Ingresa la Url : "
			read url
			youtubedr info $url
			cd $r
			;;
	esac
}
video

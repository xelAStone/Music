#!/bin/env/bash
col="\033[1;32m"

r=$(pwd)
funcion(){
	echo -n $col "Opciones \n [p] pausa \n [s] detener \n [pl] iniciar \n  ----> : "
	read op
	case $op in
		p)
			termux-media-player pause
			cd $r
			;;
		s)
			termux-media-player stop
			cd $r
			;;
		pl)
			termux-media-player play
			cd $r
			;;

	esac
}
funcion

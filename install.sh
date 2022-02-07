#!/data/data/com.termux/files/usr/bin/bash

col1="\033[1;36m"
ruta=(pwd)
pkg update && pkg upgrade -y
sleep 1
pkg install youtubedr
sleep 1
pkg install play-audio
echo $col1 "Se instalaron los paquetes correspondientes"
sleep 2

clear
if [ -e /data/data/com.termux/filea/usr/etc/bash.bashrc ];then

	rm -f $PREFIX/etc/bash.bashrc
else
	break
fi
sleep 1
clear

mv bash.bashrc $PREFIX/etc/

#mkdir $PREFIX/etc/musica
#mv install.sh banner.sh music.sh pause.sh youtube.sh $PREFIX/etc/musica
clear
#rm -rf $ruta
source $PREFIX/etc/bash.bashrc

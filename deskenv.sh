#!/bin/bash

gnome=
i3=
intel=
nvidia=

function  usage
{
	echo "usage: deskenv [graphics][option][option]...."
	echo "graphics: -intel, -nvidia"
	echo "options: [-g | --gnome] [-i | --i3]"
}

function graphics
{
	echo "You must specify a Graphics Card"
	echo "Use, lspci | grep VGA"
	echo "For Help, deskenv -h"
	exit 1
}

function main
{
while [ "$1" != "" ]; do
    case $1 in
	-intel       )          intel=1
				;;
	-nvidia      )		nvidia=1
				;;
        -g | --gnome )          gnome=1
                                ;;
        -i | --i3 )             i3=1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
         * )                    usage
                                exit 1
    esac
    shift
done
}

case "$1" in
        *intel       )          main
                                ;;
        *nvidia      )          main
                                ;;
        *)                      graphics
                                ;;
esac

if [ "$intel" = "1" ]; then
	echo "intel install"
	#pacman -S xf86-video-intel
fi

if [ "$nvidia" = "1" ]; then
	echo "nvidia install"
	#pacman -S xf86-video-nouveau
fi

if [ "$gnome" = "1" ]; then
	echo "gnome install"
fi

if [ "$i3" = "1" ]; then 
	echo "i3 install"
fi


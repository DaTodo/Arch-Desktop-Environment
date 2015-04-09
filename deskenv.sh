#!/bin/bash

function  usage
{
	echo "usage: deskenv [graphics][option][option]...."
	echo "graphics: -intel, -nvidia"
	echo "options: [-g | --gnome] [-i | --i3]"
}

gnome=
i3=
intel=
nvidia=

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
if [ "$intel" = "1" ]; then
	echo "intel install"
fi

if [ "$nvidia" = "1" ]; then
	echo "nvidia install"
fi

if [ "$gnome" = "1" ]; then
	echo "gnome install"
fi

if [ "$i3" = "1" ]; then 
	echo "i3 install"
fi

#!/bin/bash

function  usage
{
	echo "usage: deskenv [option]"
}

gnome=
i3=

while [ "$1" != "" ]; do
    case $1 in
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

if [ "$gnome" = "1" ]; then
	echo "gnome install"
fi

if [ "$i3" = "1" ]; then 
	echo "i3 install"
fi

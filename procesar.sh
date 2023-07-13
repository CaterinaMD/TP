#!/bin/bash

directorio="archivo_descomprimido"
if [ -d archivo_descomprimido ];
then
	datos=$(ls "$directorio")
	if [ -e tamano_imagen ];
	then
		echo "Eliminado"
		rm -r tamano_imagen
	fi
	mkdir tamano_imagen

	for archivo in $datos;
	do
		if [[ $archivo =~ [A-Z][a-z]+(_[A-Z][a-z]+)*\.jpeg  ]];
		then
			echo "Modificando el tamaño de $archivo"
			arc="$directorio/$archivo"
			convert "${arc}" -gravity center -resize 512x512+0+0 -extent 512x512 "$archivo"
			mv "$archivo" tamano_imagen
		else
			echo "$archivo no cumple con los requisitos"
		fi
	done
else
        echo "Error. El archivo debe ser descomprimido anteriormente."
        exit 1
fi
exit 0

#!/bin/bash
if [ -f imagen.zip ];
then
	echo "El archivo existe"

	if [ -d archivo_descomprimido ];
	then
		rm -r archivo_descomprimido
	fi

        mkdir archivo_descomprimido
        unzip imagen.zip -d "archivo_descomprimido"
        echo "Archivo fue descomprimido correctamente"
else
        echo "Error. El archivo no existe"
        exit 1
fi

rm imagen.zip

exit 0

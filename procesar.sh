#!/bin/bash
datos=$(unzip imagen.zip -d temp_folder)
imagenes=$(unzip -l imagen.zip | tail -n 4 | head -n -2 | cut -c 31-)

if [ -e tamaño_im ];
then
	rm tamaño_im
fi

for archivo in $datos;
do
	imagen=${archivo:12}
	if [[ $imagen =~ [A-Z][a-z]+_[A-Z][a-z]+\.jpeg  ]];
	then
		echo "Modificando el tamaño de $imagen"
		echo "archivo: $archivo"
		echo "CUMPLE: $imagen"
		arch="temp_folder/$imagen"
		convert "${arch}" -gravity center -resize 512x512+0+0 -extent 512x512 "t_${imagen}"
		zip tamaño_im "t_${imagen}"
	fi
done

rm "t_"*
rm -r temp_folder

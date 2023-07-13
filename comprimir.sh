#!/bin/bash
if [ -e todas_las_imagenes ];
then
	rm -r todas_las_imagenes
fi

if [ -e total_archivos.zip ];
then
	rm -r total_archivos.zip
fi


if [ -d "archivo_descomprimido" ];
then
	generar="archivo_descomprimido"
	
	# Generamos archivo con los nombres de todas las personas
	total_imagenes=$(ls "$generar")
	echo "$total_imagenes" > todas_las_imagenes.txt
	
	# Generamos carpeta con todas las imagenes
        mv $generar todas_las_imagenes
else
	echo "Error. Se debe ejecutar descomprimir.sh anteriormente."
	exit 1
fi

if [ -d "tamano_imagen" ];
then
	procesar="tamano_imagen"
	
	# Generamos archivo con los nombres válidos
	nombres_val=$(ls "$procesar")
	echo "$nombres_val" > nombres_validos.txt
else
	echo "Error. Se debe ejecutar procesar.sh anteriormente."
	exit 2
fi

# Generamos archivo con el total de personas cuyo nombre termina en a
contador=0
for nombres in $total_imagenes;
do
	if [[ $nombres == *a.jpeg ]];
	then
		contador=$((contador + 1))
	fi
done
echo "$contador" > total_personas_a.txt

zip total_archivos.zip  todas_las_imagenes todas_las_imagenes.txt nombres_validos.txt total_personas_a.txt
rm -r todas_las_imagenes
rm total_personas_a.txt
rm todas_las_imagenes.txt
rm nombres_validos.txt
exit 0

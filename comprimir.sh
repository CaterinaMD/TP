#!/bin/bash
if [ -e todas_las_imagenes ];
then
	rm -r todas_las_imagenes
fi

if [ -e nombres_validos ];
then
        rm -r nombres_validos
fi

if [ -e total_personas_a ];
then
         rm -r total_personas_a
fi

if [ -e total_archivos.zip ];
then
	rm -r total_archivos.zip
fi


if [ -d "archivo_descomprimido" ];
then
	generar="archivo_descomprimido"
	total_imagenes=$(ls "$generar")
	mkdir todas_las_imagenes

	for imagen in $total_imagenes;
	do
        	cp "$generar/$imagen" "todas_las_imagenes"
	done
else
	echo "Error. Se debe ejecutar descomprimir.sh anteriormente."
	exit 1
fi

if [ -d "tamano_imagen" ];
then
	procesar="tamano_imagen"
	nombres_val=$(ls "$procesar")
	mkdir nombres_validos
	for nombre in $nombres_val;
	do
		cp "$procesar/$nombre" "nombres_validos"
	done
else
	echo "Error. Se debe ejecutar procesar.sh anteriormente."
	exit 2
fi

mkdir total_personas_a
echo "Creando archivo de personas que su nombre finaliza con la letra a."
for nombres in $total_imagenes;
do
	if [[ $nombres == *a.jpeg ]];
	then
		echo "Agregando a $nombres"
		cp "$generar/$nombres" "total_personas_a"
	else
		echo "$nombres no cumple con los requisitos."
	fi
done

zip total_archivos.zip  todas_las_imagenes nombres_validos total_personas_a
exit 0

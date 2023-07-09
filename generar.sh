#!/bin/bash
if [ $# -ne 1 ];
then
	echo "Error. Debe ingresar solo un argumento."
	exit 1
fi

cantidad=$1

if [ $cantidad -lt 0 ];
then
	echo "Error. Debe ingresar una cantidad valida"
	exit 1
fi

if [ ! -d imagenes ];
then
	mkdir imagenes
fi

for i in $(seq "$cantidad");
do
	archivo=$(cut -d "," -f 1 Nombres.txt | shuf -n 1)
	curl -o "${archivo}.jpeg" "https://thispersondoesnotexist.com/"
	
	echo "Comprimimos archivo cambiando su tamaño"
	# ls -l		Para verificar que se comprime
	convert "${archivo}.jpeg" -gravity center -resize 512x512+0+0 -extent 512x512 "${archivo}.jpeg"
	# ls -l		Para verificar que se comprime

	echo "Generamos checksum ${archivo}_suma_verificacion.txt"
	sha256sum "$archivo.jpeg" > "${archivo}_suma_verificacion.txt"

	echo "Verificamos checksum:"
	sha256sum --check "${archivo}_suma_verificacion.txt"
	checkSumOk=$(echo $?)
	if [ $checkSumOk -eq 0 ];
	then
		echo "Checksum OK"
	else
		echo "Error. Checksum incorrecto"
		exit 1
	fi
	
	echo "Se ha creado \"${archivo}.jpeg\""
	
	mv "${archivo}_suma_verificacion.txt" imagenes
	mv "${archivo}.jpeg" imagenes
	sleep 2
done
exit 0

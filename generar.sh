#!/bin/bash
if [ $# -ne 1 ];
then
	echo "Error. Debe ingresar una cantidad valida."
	exit 1
fi

for i in $(seq "$1");
do
	archivo=$(cut -d "," -f 1 Nombres.txt | tr " " "_" | shuf -n 1)
	curl -o "$archivo.jpeg" "https://thispersondoesnotexist.com/"
	convert "$archivo.jpeg" -gravity center -resize 512x512+0+0 -extent 512x512 "comp_$archivo.jpeg"
	sha256sum "comp_$archivo.jpeg" >> suma_verificacion.txt
	echo "Se ha creado comp_$archivo.jpeg"
	rm "$archivo.jpeg"
	mv "comp_$archivo.jpeg" imagenes
	sleep 2
done
exit 0

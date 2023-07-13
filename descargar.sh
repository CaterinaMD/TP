#!/bin/bash
if [ $# -ne 2 ];
then
	echo "Error. Debe ingresar dos argumentos."
	exit 1
fi

if [ -f imagen.zip ];
then
	rm imagen.zip
fi

url_imagen=$1
url_sumaverificacion=$2

curl -L -o imagen.zip --connect-timeout 5 "$url_imagen"
urlValid=$?
if [ $urlValid -ne 0 ];
then
	echo "La url de imagen es inválida"
	exit 1
fi

curl -o sumaverificacion_url.txt --connect-timeout 5 "$url_sumaverificacion"
urlValid=$?
if [ $urlValid -ne 0 ];
then
	echo "La url de la suma de verificación es inválida"
	exit 1
fi

sha256sum "imagen.zip" > sumaverificacion_imagen.txt
sumaverificacion_imagen=$(cut -d " " -f 1 sumaverificacion_imagen.txt)
sumaverificacion_url=$(cat sumaverificacion_url.txt)

if [ "$sumaverificacion_imagen" == "$sumaverificacion_url" ];
then
	echo "Las sumas de verificacion coinciden"
else
	echo "Las sumas de verificacion no coinciden"
	rm imagen.zip
	rm sumaverificacion_url.txt
	rm sumaverificacion_imagen.txt
	exit 1
fi

rm sumaverificacion_url.txt
rm sumaverificacion_imagen.txt

exit 0

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

urlImagen=$1
urlSumaDeVerificacion=$2

curl -o "imagen.jpeg" "$urlImagen"
#curl -o "sumaDeVerificacionUrl.txt" "$urlSumaDeVerificacion"

sha256sum "imagen.jpeg" > sumaDeVerificacionImagen.txt
sumaDeVerificacionImagen=$(cut -d " " -f 1 sumaDeVerificacionImagen.txt)
sumaDeVerificacionUrl=$(cat sumaDeVerificacionUrl.txt)

if [ "$sumaDeVerificacionImagen" == "$sumaDeVerificacionUrl" ];
then
	echo "Las sumas de verificacion coinciden"
else
	echo "Las sumas de verificacion no coinciden"
	rm imagen.jpeg
	rm sumaDeVerificacionUrl.txt
	rm sumaDeVerificacionImagen.txt
	exit 1
fi

zip imagen.zip imagen.jpeg
zip imagen.zip sumaDeVerificacionUrl.txt

rm imagen.jpeg
rm sumaDeVerificacionUrl.txt
rm sumaDeVerificacionImagen.txt

exit 0

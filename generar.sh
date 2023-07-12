#!/bin/bash
if [ $# -ne 1 ];
then
	echo "Error. Debe ingresar solo un argumento."
	exit 1
fi

cantidad=$1

if [ $cantidad -lt 1 ];
then
	echo "Error. Debe ingresar una cantidad valida"
	exit 1
fi

if [ -f imagen.zip ];
then
	rm imagen.zip
fi

if [ -f suma_verificacion.txt ];
then
	rm suma_verificacion.txt
fi

for i in $(seq "$cantidad");
do
	archivo=$(cut -d "," -f 1 Nombres.txt | tr " " "_"  | shuf -n 1)
	curl -o "${archivo}.jpeg" "https://thispersondoesnotexist.com/"

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

	zip imagen.zip "${archivo}.jpeg"
	
	rm "${archivo}_suma_verificacion.txt"
	rm "${archivo}.jpeg"

	sleep 2
	
done

echo "Generamos checksum imagen.zip"
sha256sum imagen.zip | awk '{print $1}' > suma_verificacion.txt

exit 0

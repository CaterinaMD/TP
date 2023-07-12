Comprimir.sh:
Este script se encarga de almacenar copiar archivos de un directorio a otro, crea directorios y almacena en un zip los archivos copiados.
Lo que realiza es lo siguiente:
-Verifica que si hay unos directorios en especifico, en caso de existir los elimina.
-Verifica si existe el "archivo_descomprimido" y si esta genera una copia.
-En caso de no existir, se emitira un mensaje por pantalla y finaliza la ejecucion.
-Verifica si existe el "tamano_imagen" y si esta genera una copia.
-En caso de no existir, emitira un mensaje por pantalla y finaliza la ejecucion.
-Si el nombre de un archivo finaliza con la letra a, se genera una copia, sino emite un mensaje por pantalla.
-Luego las copias generadas son almacenadas en un zip llamado "total_archivos.zip".

requisitos:
-Se debera ejecutar anteriormente generar.sh y descomprimir.sh

descomprimir.sh:

Este script en Bash descomprime el archivo "imagen.zip" y crea una carpeta llamada "carpeta_descomprimida" para guardar los archivos descomprimidos.

Ejecución:

./script.sh

Descripción del script:

Verifica si el archivo "imagen.zip" existe. Si el archivo no existe, muestra un mensaje de error y finaliza la ejecución. Si el archivo "imagen.zip" existe se crea "carpeta_descomprimida"(anteriormente verifica si existe y si es asi la borra) y se descomprime el archivo "imagen.zip" en "carpeta_descomprimida".Finalmente se muestra un mensaje de éxito indicando que el archivo fue descomprimido correctamente y se elimina el archivo "imagen.zip" para limpiar los archivos temporales.

Debes asegurarte de que el archivo "imagen.zip" esté presente en el mismo directorio que el script antes de ejecutarlo.

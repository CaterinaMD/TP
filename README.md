generar.sh:

Este script de Bash permite generar imágenes aleatorias descargadas de "https://thispersondoesnotexist.com/" y realizar verificaciones de checksum para asegurar la integridad de los archivos generados. El script acepta un argumento que indica la cantidad de imágenes que se generarán.

Ejecuta el script con el siguiente comando:
./generar_imagenes.sh <cantidad>

Descripción del Script

Verificación de argumentos: verifica si se ha ingresado el argumento correctamente y sino muestra un mensaje de error y finaliza la ejecución.

Eliminación de archivos existentes: si los archivos que voy a crear y usar ya existen porque el script se ejecuto anteriormente se eliminan.

Generación de imágenes: Se extrae un nombre aleatorio del archivo "Nombres.txt" y se descarga una imagen desde "https://thispersondoesnotexist.com/" con el nombre generado. Se genera la suma de verificación y se verifica. Se crea un archivo ZIP ,"imagen.zip", y se agregan las imagenes descargadas.Por ultimo se eliminan los archivos temporales.

Generación del checksum para el archivo ZIP: se genera la suma de verificación para el archivo "imagen.zip" y se guarda en "suma_verificacion.txt".


descargar.sh:

Este script en Bash descarga un archivo de imagen ZIP y verifica su integridad utilizando una suma de verificación proporcionada. 

Ejecución:

./script.sh (url_imagen) (url_sumaverificacion)

Descripción del script:

Con el URL proporcionado descarga el archivo de imagen ZIP y con la otra URL la suma de verificación. Luego calcula la suma de verificación del archivo de imagen descargado y la compara con la suma de verificación proporcionada. Si coinciden, muestra un mensaje de éxito y elimina los archivos de suma de verificación. En caso contrario, muestra un mensaje de error y elimina el archivo de imagen, así como los archivos de suma de verificación.

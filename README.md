Procesar.sh:

Este script se encarga recortar imagenes el cual dependiendo el nombre que posean, se verificara si se realiza este procedimiento o no.
"procesar.sh" se encarga de:
-Verificar que exista el directorio "archivo_comprimido".
-Crea un directorio llamado "tamano_imagen", el cual si existe anteriormente lo elimina.
-Recorre los archivos que contiene "archivo comprimido".
-Comprueba que el nombre cumpla con el patron asignado.
-Si cumple con el patron, la imagen es recortada y almacenada en "tamano_imagen".
-Si no cumple con el patron, emite un mensaje en la pantalla.
-En caso de que no exista el directorio "archivo_comprimido", emite un mensaje en pantalla y finaliza su ejecucion.

Para utilizar este script se debera contemplar lo siguiente:
-Tener instalado la herramienta "convert" de imagemagick
-Ejecutar antes el script descomprimir.sh para descomprimir las imagenes.


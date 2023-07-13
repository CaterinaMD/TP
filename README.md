# **TUIA - TP ENTORNO DE PROGRAMACION**

## Integrantes:
Andres Martinez Bilesio
Caterina Martinez Dufour
Maria Victoria Oviedo

### Tabla de contenidos:
- [Descripcion](#Descripcion)
- [Uso](#Uso)
- [Docker](#Docker)

### Descripcion
El objetivo del trabajo práctico es diseñar y escribir un programa para 
procesar un lote de imágenes. 
Este programa consta de cuatro partes principales:
1. En primer lugar, para obtener un conjunto de imágenes se debe poder
elegir entre generar el conjunto descargando las imágenes individualmente o
descargarlas desde un servicio web con su suma de verificación, verificando
la misma.
2. Se presentará una opción para descomprimir un archivo con imágenes.
3. Luego se debe aplicar una transformación solamente a las imágenes de
personas.
4. Finalmente se debe generar un archivo comprimido con las imágenes
procesadas y algunos datos extra.
Todo el trabajo debe ser realizado bajo control de versiones, con participación
de todos los integrantes y debe ejecutarse dentro de un contenedor.

##### Uso
-**generar.sh**:

Este script de Bash permite generar imágenes aleatorias descargadas de "https://thispersondoesnotexist.com/"
Descripción del Script:
-Verificación de argumentos: verifica si se ha ingresado el argumento correctamente.
-Eliminación de archivos existentes: si los archivos que voy a crear y usar ya están creados, son eliminados.
-Generación de imágenes: Se extrae un nombre aleatorio del archivo "Nombres.txt" y es utilizado para la imagen generada (reemplazando espacios por guion bajo).
-Generación de la suma de verificacion para el archivo ZIP.

Ejemplo de comando: ./generar_imagenes.sh <cantidad>

-**descargar.sh**:

Este script en Bash descarga un archivo de imagen ZIP y verifica su integridad.
Descripción del script:
-Con el primer URL proporcionado descarga el archivo de imagen ZIP y con la otra URL descarga la suma verificacion. Luego chequea que la suma de verificacion del zip coincida con lo descargado en la segunda URL.
-Chequea que las URLs sean válidas.

Los URL para probar el script son los siguientes:
-url_imagen: https://github.com/victoria-oviedo/imagen.zip/raw/main/imagen.zip
-url_sumaverificacion: https://raw.githubusercontent.com/victoria-oviedo/sumaverificacion.txt/main/suma_verificacion.txt

Ejemplo de comando: ./descargar.sh (url_imagen) (url_sumaverificacion)

-**descomprimir.sh**:

Este script en Bash descomprime el archivo "imagen.zip" y crea una carpeta llamado "archivo_descomprimido".
Descripción del script:
-Verifica si el archivo "imagen.zip" existe. Si el archivo no existe, muestra un mensaje y finaliza la ejecución. sino descomprime el zip y lo almacena en "archivo_descomprimido".

Requisitos:
Debes asegurarte de que el archivo "imagen.zip" esté presente en el mismo directorio (este se genera con generar.sh o descargar.sh).

Ejemplo de comando:  ./descomprimir.sh

-**procesar.sh**:

Este script se encarga recortar solo las imagenes que cumplen con ciertos requisitos.
Descripcion del script:
-Verificar que exista el directorio "archivo_comprimido".
-Crea un directorio llamado "tamano_imagen", el cual si existe anteriormente lo elimina.
-Recorre los archivos que contiene "archivo comprimido".
-Comprueba que el nombre cumpla con el patron asignado.
-Si cumple con el patron, la imagen es recortada y almacenada en "tamano_imagen".
-Si no cumple con el patron, emite un mensaje en la pantalla.
-En caso de que no exista el directorio "archivo_comprimido", emite un mensaje y finaliza la ejecucion.

Requisitos:
-Ejecutar antes el script descomprimir.sh para obtener el directorio "archivo_comprimido".

Ejemplo de ejecucion: ./procesar.sh

-**comprimir.sh**:

Este script se encarga de generar un zip con las imagenes procesadas y algunos datos extras.
Descripcion del script:
-Verifica si existe el "archivo_descomprimido" y "tamano_imagen"
	-> Si existen genera 3 archivos ".txt" (list de todos los nombre, list de todos los nombres válidos, cantidad total de nombres que terminan con la letra a)
	-> Caso contrario, emite un mensaje y finaliza la ejecucion.
-Luego los txt y la carpeta de imagenes son almacenadas en un zip llamado "total_archivos.zip" que se guarda en carpetaZip.

Requisitos:
-Se debera ejecutar anteriormente procesar.

Ejemplo de ejecucion: ./comprimir.sh

-**menu.sh**:

Este script proporciona un menú de opciones para ejecutar diferentes comandos y scripts. 
Cada opción realiza una operación específica, como generar imágenes, descargar archivos, descomprimir archivos, procesar datos o comprimir archivos.
Descripcion del script:
-Este script hace uso de otros scripts adicionales:
-generar.sh: Genera un número específico de imágenes. 
-descargar.sh: Descarga archivos desde una URL y verifica su suma de verificación. 
-descomprimir.sh: Descomprime archivos. 
-procesar.sh: Procesa datos. 
-comprimir.sh: Comprime archivos.

Ejemplo de ejecucion: ./menu.sh


### Docker

	cd directorio_donde_clonar

	git clone https://github.com/CaterinaMD/TP.git

	cd TP

**Contruimos imagen del docker**

	sudo docker build . --tag tp:1.0

**Vemos directorio actual**

	pwd

**Corremos nuestra imagen con un directorio real y uno dentro del docker**

	sudo docker run -v /home/vicky/Escritorio:/var/carpetaZip -it tp:1.0

**El zip generado queda guardado en /home/vicky/Escritorio**

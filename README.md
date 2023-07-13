#**TUIA - TP ENTORNO DE PROGRAMACION**

##Integrantes:
Andres Martinez Bilesio
Caterina Martinez Dufour
Maria Victoria Oviedo

### Tabla de contenidos:
- [Descripcion](#Descripcion)
- [Instalacion](#Instalacion)
- [Uso](#Uso)

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

#### Instalacion
Para evitar problemas al ejecutar este trabajo, deberas tener instalado lo
siguiente:

1-**ImageMagick**:
Para instalarlo deberas ingresar el siguiente comando por la terminal:
sudo apt-get install imagemagick
2-**Curl**:
Para instalarlo deberas ingresar el siguiente comando por la terminal:
sudo apt-get install curl

##### Uso
-*generar.sh*:

Este script de Bash permite generar imágenes aleatorias descargadas de "https://thispersondoesnotexist.com/"
Descripción del Script:
-Verificación de argumentos: verifica si se ha ingresado el argumento correctamente.
-Eliminación de archivos existentes: si los archivos que voy a crear y usar ya están creados, son eliminados.
-Generación de imágenes: Se extrae un nombre aleatorio del archivo "Nombres.txt" y es utilizado para la imagen generada.
-Generación del checksum para el archivo ZIP: se genera la suma de verificación.

Ejemplo de comando: ./generar_imagenes.sh <cantidad>

-*descargar.sh*:

Este script en Bash descarga un archivo de imagen ZIP y verifica su integridad.
Descripción del script:
-Con el URL proporcionado descarga el archivo de imagen ZIP y con la otra URL de verificacion.
-Los URL para probar el script son los siguientes:
-url_imagen: https://github.com/victoria-oviedo/imagen.zip/raw/main/imagen.zip
-url_sumaverificacion: https://raw.githubusercontent.com/victoria-oviedo/sumaverificacion.txt/main/suma_verificacion.txt

Ejemplo de comando: ./descargar.sh (url_imagen) (url_sumaverificacion)

-*descomprimir.sh*:

Este script en Bash descomprime el archivo "imagen.zip" y crea una carpeta llamado "archivo_descomprimido".
Descripción del script:
-Verifica si el archivo "imagen.zip" existe. Si el archivo no existe, muestra un mensaje y finaliza la ejecución. sino descomprime el zip y lo almacena en "archivo_descomprimido".

requisitos:
Debes asegurarte de que el archivo "imagen.zip" esté presente en el mismo directorio.

Ejemplo de comando:  ./descomprimir.sh

-*procesar.sh*:

Este script se encarga recortar imagenes el cual dependiendo si el nombre cumple con ciertos requisitos.
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

-*comprimir.sh*:

Este script se encarga de almacenar copiar archivos de un directorio a otro para luego almacenarlos en un mismo zip.
Descripcion del script:
-Verifica que si hay unos directorios en especifico, en caso de existir los elimina.
-Verifica si existe el "archivo_descomprimido" y "tamano_imagen", si existen genera una copia y un archivo.txt. caso contrario, emite un mensaje y finaliza la ejecucion.
-Si el nombre de un archivo finaliza con la letra a, se inicializa un contador y genera un archivo.txt con el total.
-Luego las copias generadas son almacenadas en un zip llamado "total_archivos.zip".

requisitos:
-Se debera ejecutar anteriormente generar.sh y descomprimir.sh para obtener "archivo_descomprimido" y "tamano_imagen"

Ejemplo de ejecucion: ./comprimir.sh

-*menu*:

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

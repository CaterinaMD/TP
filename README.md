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

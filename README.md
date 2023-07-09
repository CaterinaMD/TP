Para ver cambios anteriores:
git log 			==> Nos muestra todos los commits que se hicieron
git diff <commit> 		==> Nos muestra la diferencia entre el commit actual y un commit cualquiera
git diff <commit> <commit>	==> Nos muestra la diferencia entre dos commits cualquiera
git revert <commit>		==> Revierte un commit (luego hay que hace git push)



generar.sh:

1) comprimir? Cómo?
	- Archivo zip? Si es un archivo zip, uno por imagen? Uno solo con todas las imagenes? Las sumas de verificacion van dentro del zip?
	- Achicar imagen?
	- Disminuir calidad de la imagen?
	
2) generar archivo con su suma de verificacion.
	Que hacemos con este archivo y con la imgen generada anteriormente? Las guardamos en algún lado? La suma de verificacion es solo para verificarlo y después lo borramos?
	

descargar.sh

1) Si utilizamos la url https://thispersondoesnotexist.com/ entonces se está generando una imagen nueva cada vez que hacemos un get, cuál sería la segunda URL que nos provee las suma de verificacion? La tenemos que exponer nosotros?
Ejecutar lo siguiente nos devuelve la suma de verificacion, el tema es que nos devuelve uno distinto cada vez ya que se generan imagenes nuevas.
curl https://thispersondoesnotexist.com | sha256sum



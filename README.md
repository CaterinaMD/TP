Para ver cambios anteriores:
git log 			==> Nos muestra todos los commits que se hicieron
git diff <commit> 		==> Nos muestra la diferencia entre el commit actual y un commit cualquiera
git diff <commit> <commit>	==> Nos muestra la diferencia entre dos commits cualquiera
git revert <commit>		==> Revierte un commit (luego hay que hace git push)

descargar.sh

1) Si utilizamos la url https://thispersondoesnotexist.com/ entonces se está generando una imagen nueva cada vez que hacemos un get, cuál sería la segunda URL que nos provee los checksum? La tenemos que exponer nosotros?
Ejecutar lo siguiente nos devuelve el checksum, el tema es que nos devuelve uno distinto cada vez ya que se generan imagenes nuevas.
curl https://thispersondoesnotexist.com | sha256sum



FROM ubuntu
RUN apt-get update && apt-get install -y curl && apt-get install -y imagemagick && apt-get install -y zip

ADD generar.sh /var
RUN chmod +x /var/generar.sh

ADD descargar.sh /var
RUN chmod +x /var/descargar.sh

ADD descomprimir.sh /var
RUN chmod +x /var/descomprimir.sh

ADD procesar.sh /var
RUN chmod +x /var/procesar.sh

ADD comprimir.sh /var
RUN chmod +x /var/comprimir.sh

ADD menu.sh /var
RUN chmod +x /var/menu.sh

ADD Nombres.txt /var

WORKDIR /var

ENTRYPOINT ["/bin/bash", "./menu.sh"]

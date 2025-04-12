FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt-get install git -y
VOLUME ["/ritik"]
ADD ./var/www/html
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 100
CMD ["apche2","start"]
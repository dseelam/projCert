FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install apache2 -y
COPY index.php /var/www/html
EXPOSE 80
CMD ["apache2ctl" , "-D" , "FOREGROUND"]

FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
COPY Phonepe_recharge.html /var/www/html
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

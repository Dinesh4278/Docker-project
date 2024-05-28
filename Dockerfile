FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
COPY phonepe_train_tickets.html /var/www/html
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

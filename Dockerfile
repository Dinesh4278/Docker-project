FROM ubuntu                                          //used to create the image using the ubuntu OS
RUN apt update -y                                    //this command has to run firstly in ubuntu to run any type of commands
RUN apt install apache2 -y                          //To install the Apache service
COPY index.html /var/www/html                       //To move the HTML code to the location where the frontend code will execute
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]    //To start the apache server -D refers Deteach mode Foreground refers to run the command in foreground

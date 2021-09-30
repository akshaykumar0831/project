FROM devopsedu/webapp



MAINTAINER Akshay0831

RUN apt-get update -y

 

#Install Apache

RUN apt-get install -y apache2

 



#Copy Application Files

RUN rm -rf /var/www/html/*

COPY website /var/www/html/

 

#Open port 80

EXPOSE 8080

 

#Start Apache service

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

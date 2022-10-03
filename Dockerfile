FROM ubuntu
MAINTAINER vinay devarsetty <devarsetty.vinay@calsoftinc.com>
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
CMD ["echo", "Hey I m Vinay"]


FROM ubuntu
MAINTAINER fouad (foufou-95@live.fr)
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git  nginx
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
#ADD static-website-example/ /var/www/html/
ENTRYPOINT ["nginx", "-g", "daemon off;"]

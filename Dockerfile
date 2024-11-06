FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf 
COPY custom_nginx.conf /etc/nginx/conf.d/default.conf

COPY html/ /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY images/ /usr/share/nginx/html/images/

EXPOSE 8080
#Dockerfile
FROM nginx:latest
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY local.conf /etc/nginx/conf.d/
COPY index.html /var/www/html/

CMD ["nginx", "-g", "daemon off;"]


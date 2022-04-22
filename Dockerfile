FROM alpine:3.15
RUN apk --no-cache add apache2
WORKDIR /app
VOLUME /app/website /app/logs
COPY vhost.conf /etc/apache2/conf.d/vhost.conf
COPY . /app/website/
EXPOSE 80
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]

FROM nginx:stable

RUN groupadd webmaster && useradd -s /sbin/nologin -d /var/www/ -M -g webmaster webmaster && passwd -l webmaster
ONBUILD RUN chown -R webmaster:webmaster /var/www

ADD nginx.conf /etc/nginx/

VOLUME ["/var/www"]

EXPOSE 80 81 82 443

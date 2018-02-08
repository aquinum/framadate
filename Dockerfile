FROM php:7.2-apache

ENV SMTP_HOST "localhost"
ENV SMTP_PORT "25"
ENV SMTP_USERNAME ""
ENV SMTP_PASSWORD ""
ENV SMTP_SECURE ""

ENV ADMIN_USERNAME "admin"
ENV ADMIN_PASSWORD "admin"

ENTRYPOINT [ "bash", "/entrypoint.sh" ]

COPY ./docker/ /tmp/setup
RUN bash /tmp/setup/setup.sh

COPY --chown=www-data:www-data . /var/www/html/
RUN bash /tmp/setup/configure.sh
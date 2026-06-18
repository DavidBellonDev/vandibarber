FROM webdevops/php-nginx:8.2

WORKDIR /app

COPY . /app

RUN composer install --no-dev --optimize-autoloader

RUN chmod -R 777 /app/writable

ENV WEB_DOCUMENT_ROOT=/app/public

EXPOSE 80

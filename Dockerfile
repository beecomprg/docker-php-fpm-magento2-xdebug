FROM beecomprg/docker-php-fpm-magento2:7.1.25-1

#BUILD dependencies
RUN apk add --no-cache patch $PHPIZE_DEPS \
    && pecl install xdebug-2.6.1 \
    && docker-php-ext-enable xdebug

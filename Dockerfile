FROM php:7.4-cli-alpine

# Install Composer
ENV PATH /root/.composer/vendor/bin:$PATH
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

# Install required stuff for Deployer
RUN apk add --no-cache openssh rsync

# Install Deployer
RUN composer global require deployer/deployer

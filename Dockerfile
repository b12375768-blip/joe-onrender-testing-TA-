FROM php:8.2-apache

# Enable Apache rewrite (important for routing / cloaking logic)
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy all project files into container
COPY . /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port (Render uses 80 internally)
EXPOSE 80

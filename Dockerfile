# Use the official PHP 7.4 image as the base image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the PHP files and CSS files to the working directory
COPY index.php css/style.css /var/www/html/

# Install any required PHP extensions or dependencies
# For example, if your project requires MySQL:
# RUN docker-php-ext-install pdo_mysql

# Expose port 80 for Apache web server
EXPOSE 80

# Start the Apache web server when the container launches
CMD ["apache2-foreground"]

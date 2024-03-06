# Use an official httpd image as the base image
FROM httpd:latest

# Set the working directory to /usr/local/apache2/htdocs/
WORKDIR /usr/local/apache2/htdocs/

# Copy the index.html file from the current directory to /usr/local/apache2/htdocs/
COPY index.html /usr/local/apache2/htdocs/

# Expose port 80 for incoming HTTP traffic
EXPOSE 80

# Set the ServerName directive to suppress the notice
RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf

# Start the Apache HTTP Server service
CMD ["httpd-foreground"]


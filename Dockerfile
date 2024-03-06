# Use an official NGINX image as the base image
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html/

# Copy the index.html file from the current directory to /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/

# Expose port 80 for incoming HTTP traffic
EXPOSE 80


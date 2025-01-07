# official Nginx base image
FROM nginx:latest

# This will copy custom Nginx configuration file.
COPY nginx.conf /etc/nginx/conf.d/default.conf

# To Copy the custom HTML file to the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose and define port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

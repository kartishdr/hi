# Use the official NGINX base image
FROM nginx:alpine

# Copy custom configuration file if needed
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy static website files or HTML into the default NGINX public folder
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX (default CMD from base image)
CMD ["nginx", "-g", "daemon off;"]


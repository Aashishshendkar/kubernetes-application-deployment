# Dockerfile
# Base Image
FROM nginx:latest

# Maintainer
LABEL maintainer="Aashish Shendkar"

# Remove Default Nginx Files
RUN rm -rf /usr/share/nginx/html/*

# Copy Application Files
COPY . /usr/share/nginx/html

# Expose HTTP Port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

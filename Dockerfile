# Use the official NGINX image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html/docs

# Copy the zip file into the container
COPY webHelpCODEARRAY2-all.zip .

# Install required packages for unzipping
RUN apk add --no-cache unzip && \
    unzip webHelpCODEARRAY2-all.zip && \
    rm webHelpCODEARRAY2-all.zip

# Copy the custom NGINX configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the port for NGINX
EXPOSE 80

# Start NGINX (this is the default command for the nginx:alpine image)
CMD ["nginx", "-g", "daemon off;"]
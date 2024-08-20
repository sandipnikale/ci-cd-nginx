# Use the official NGINX base image
FROM nginx:alpine

# Remove default NGINX configuration
RUN rm /usr/share/nginx/html/*

# Copy the HTML file into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]

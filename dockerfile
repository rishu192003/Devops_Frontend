# Use Nginx as the base image
FROM nginx:alpine

# Remove default Nginx files (optional)
RUN rm -rf /usr/share/nginx/html/*

# Copy the contents of the html folder into Nginx's static folder
COPY html/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

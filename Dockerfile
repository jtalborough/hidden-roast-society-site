# Serve the pre-built site with Nginx
FROM nginx:alpine

# The GitHub Action will copy the built site into the 'public' directory.
# This Dockerfile just needs to copy it into the Nginx server directory.
COPY public /usr/share/nginx/html

# Copy your custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

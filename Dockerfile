# Stage 1: Build the Hugo site
FROM gohugoio/hugo:0.128.2-extended AS builder
WORKDIR /src
COPY . .
RUN hugo

# Stage 2: Serve the built site with Nginx
FROM nginx:alpine
# Copy the built site from the 'builder' stage
COPY --from=builder /src/public /usr/share/nginx/html
# Copy your custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

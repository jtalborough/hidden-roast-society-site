# Stage 1: Build the Hugo site
FROM gohugoio/hugo:extended AS builder
WORKDIR /src
COPY . .
RUN hugo

# Stage 2: Build the final Nginx image
FROM nginx:alpine

# Copy the built site from the builder stage
COPY --from=builder /src/public /usr/share/nginx/html

# Copy our custom, unified Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

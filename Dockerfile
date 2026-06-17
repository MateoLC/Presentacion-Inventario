FROM nginx:1.26-alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML file to the nginx server
# We rename it to index.html so it loads automatically as the main page
COPY "preparacion-inventarios-colosson_2.html" /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

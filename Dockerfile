#Builing a simple Nginx web server to serve static files
FROM nginx:latest
WORKDIR /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
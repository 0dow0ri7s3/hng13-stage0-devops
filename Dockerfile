#Builing a simple Nginx web server to serve static files
FROM nginx:latest
workdir /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
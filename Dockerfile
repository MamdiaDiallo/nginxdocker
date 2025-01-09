FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

COPY /html/index.html /usr/share/nginx/html/index.html

EXPOSE 93

CMD ["nginx", "-g", "daemon off;"]
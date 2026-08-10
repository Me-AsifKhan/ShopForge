FROM nginx:1.27-alpine

ENV GATEWAY_HOST=api-gateway
ENV GATEWAY_PORT=9090

COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY *.html /usr/share/nginx/html/
COPY js /usr/share/nginx/html/js

EXPOSE 80

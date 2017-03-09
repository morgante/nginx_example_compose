FROM nginx

COPY html /usr/share/nginx/html

ADD test_docker.sh /app/test_docker.sh

FROM nginx:alpine

ARG version=4.7.2

RUN mkdir -p /usr/share/nginx/html/ \
    && cd /usr/share/nginx/html/ \
    && wget https://github.com/tsquillario/Jamstash/releases/download/v${version}/Jamstash-v${version}.zip \
    && unzip -oq Jamstash-v${version}.zip \
    && rm Jamstash-v${version}.zip

FROM nginx:1.21.6 as bundler
WORKDIR /app

ADD opa/rules opa/rules
ADD opa/users opa/users

RUN tar -czvf bundle.tar.gz ./opa

FROM nginx:1.21.6

ADD nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=bundler /app/bundle.tar.gz /www/opa/bundle.tar.gz

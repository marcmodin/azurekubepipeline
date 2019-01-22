FROM mrkmod/azuritest:latest

COPY ./html /usr/share/nginx/html
COPY ./bin/env.sh /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
EXPOSE 80
CMD [ "sh", "-c", "./bin/env.sh > env.js" ]
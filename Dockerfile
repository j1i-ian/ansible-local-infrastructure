FROM alpine/ansible:latest

WORKDIR /app

COPY . /app

RUN apk add --no-cache openssh

CMD [ "tail", "-f", "/dev/null" ]

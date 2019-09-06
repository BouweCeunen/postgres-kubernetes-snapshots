FROM alpine
MAINTAINER bouweceunen

ENV USER='snapshot'

RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories
RUN apk --no-cache add shadow

RUN adduser -D -u 1000 ${USER}
RUN usermod -p '*' ${USER}

RUN apk update
RUN apk add --update --no-cache py-pip
RUN pip install awscli
RUN apk add --update --no-cache postgresql
RUN apk add --update --no-cache bash

COPY snapshot /home/${USER}/snapshot

USER ${USER}
WORKDIR /home/${USER}

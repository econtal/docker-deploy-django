FROM alpine
MAINTAINER Emile Contal <emile@crossingminds.com>

RUN apk --no-cache add \
        bash \
        git \
        curl \
        python \
        py-pip \
        python-dev \
    pip install --upgrade pip \
        awsebcli \
        awscli \
        credstash \
        Django \
        sphinx

RUN mkdir ~/.aws

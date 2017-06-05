FROM alpine
MAINTAINER Emile Contal <emile@crossingminds.com>

RUN apk --no-cache add \
        alpine-sdk \
        bash \
        libffi-dev \
        python \
        py2-pip \
        python-dev
RUN pip install --upgrade pip \
        awsebcli \
        awscli \
        celery \
        django-cors-headers \
        djangorestframework \
        credstash \
        Django \
        sphinx \
        sphinxcontrib.httpdomain

RUN mkdir ~/.aws

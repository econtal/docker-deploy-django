FROM alpine
MAINTAINER Emile Contal <emile@crossingminds.com>

RUN apk --no-cache add \
        bash \
        git \
        curl \
        python \
        py-pip \
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

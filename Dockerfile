FROM alpine
MAINTAINER Emile Contal <emile@crossingminds.com>

RUN apk --no-cache add \
        alpine-sdk \
        bash \
        libffi-dev \
        openssl-dev \
        python \
        py2-pip \
        python-dev
RUN pip install --upgrade pip \
        awsebcli \
        awscli \
        celery \
        credstash \
        django-cors-headers \
        djangorestframework \
        Django \
        social-auth-core \
        social-auth-app-django \
        sphinx \
        sphinxcontrib.httpdomain

RUN mkdir ~/.aws

# https://github.com/docker-library/python/issues/112
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h
RUN pip install --upgrade numpy 

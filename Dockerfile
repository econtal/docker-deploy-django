FROM alpine
MAINTAINER Emile Contal <emile@crossingminds.com>

RUN apk --no-cache add \
        alpine-sdk \
        bash \
        libffi-dev \
        mysql-client \
        py-mysqldb \
        openssl-dev \
        py2-pip \
        python-dev
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    apk update && \
    apk add py-scipy
RUN pip install --upgrade pip \
        awsebcli \
        awscli \
        celery \
        credstash \
        django-cors-headers \
        djangorestframework \
        Django \
        simplejson \
        social-auth-core \
        social-auth-app-django \
        sphinx==1.4 \
        sphinxcontrib.httpdomain \
        unidecode

RUN mkdir ~/.aws

# https://github.com/docker-library/python/issues/112
#RUN ln -s /usr/include/locale.h /usr/include/xlocale.h
#RUN pip install --upgrade numpy \
#        scipy

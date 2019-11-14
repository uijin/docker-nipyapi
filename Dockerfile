FROM python:3.7.5-alpine3.10

RUN aptupdate && apk add --no-cache --virtual .build-deps gcc libffi-dev musl-dev \
    libressl-dev ca-certificates python3-dev tzdata  \
    && apk add --no-cache libxslt-dev libxml2-dev libgcrypt-dev \
    && pip install --no-cache-dir nipyapi coloredlogs \
    && apk del .build-deps

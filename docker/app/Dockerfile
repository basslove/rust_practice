ARG IMAGE=rust:1-alpine3.11

# #####################
# base
FROM ${IMAGE} as base

ARG APP_NAME

ENV WORK_DIR /${APP_NAME}/

RUN apk --update add --no-cache git openssh

WORKDIR ${WORK_DIR}
COPY ./ ./

# #####################
# development
FROM base as development

ARG APP_NAME

RUN apk --update add tzdata \
    && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && apk del tzdata \
    && rm -rf /var/cache/apk/*

RUN apk update add --no-cache \
           bash \
           mercurial \
           musl-dev \
           curl \
           mysql-client

WORKDIR ${WORK_DIR}

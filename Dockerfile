FROM alpine:3.18

ENV KEEPALIVED_VERSION=2.2.8 \
	  KEEPALIVED_ALPINE_BUILD=r0

RUN set -ex; \
	apk add --no-cache --no-progress keepalived==${KEEPALIVED_VERSION}-${KEEPALIVED_ALPINE_BUILD};

ENTRYPOINT ["keepalived"]

FROM alpine:3.10

ARG URL=localhost
ARG USER=admin
ARG PASS=admin
ARG TIME=10

RUN apk add --no-cache curl

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
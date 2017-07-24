# https://github.com/nats-io/nats-docker/blob/master/Dockerfile
FROM nats:1.0.0 as nats

### MAIN FROM ###

FROM alpine:3.6

COPY --from=nats gnatsd /gnatsd
COPY /gnatsd.conf /
COPY /main /
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

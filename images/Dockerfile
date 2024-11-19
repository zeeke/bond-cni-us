# This Dockerfile is used to build the image available on DockerHub
FROM golang:1.23 AS build

WORKDIR /usr/src/bond-cni
COPY . .
RUN make build-bin

FROM alpine:latest
LABEL org.opencontainers.image.source=https://github.com/k8snetworkplumbingwg/bond-cni
WORKDIR /
COPY --from=build /usr/src/bond-cni/bin .
COPY --from=build /usr/src/bond-cni/LICENSE .
COPY --from=build /usr/src/bond-cni/images/entrypoint.sh .

CMD ["/entrypoint.sh"]

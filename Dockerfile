FROM golang:alpine as builder
WORKDIR /build/DroneDemo
COPY . /build/DroneDemo
RUN CGO_ENABLED=0 GOPROXY=http://goproxy.cn go build -v

FROM alpine:3.10 as runner
LABEL description="drone test"
WORKDIR /app
COPY --from=builder /build/DroneDemo /app/DroneDemo/
EXPOSE 9000

ENTRYPOINT ["/app/DroneDemo/DroneDemo"]

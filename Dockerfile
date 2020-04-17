FROM golang:1.13 as builder
WORKDIR /build
COPY . .
RUN CGO_ENABLED=0 GOPROXY=http://goproxy.cn go build -o DroneDemo

FROM alpine:3.10 as runner
LABEL description="drone test"
WORKDIR /app
COPY --from=builder /build/DroneDemo /app/
EXPOSE 9000
ENTRYPOINT [./DroneDemo]
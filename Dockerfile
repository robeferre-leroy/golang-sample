FROM golang:1.8-alpine
COPY . /go/src/hello-app
RUN go install hello-app

FROM alpine:latest
COPY --from=0 /go/bin/hello-app .
EXPOSE 5000
CMD ["./hello-app"]

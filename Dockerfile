FROM golang:1.20-alpine AS build

WORKDIR /app
COPY . .
RUN go build -o /go/bin/app

FROM alpine:3.17
RUN apk --no-cache add ca-certificates
COPY --from=build /app/k8s-ecr-cred-autorenew .
CMD ["./k8s-ecr-cred-autorenew"]

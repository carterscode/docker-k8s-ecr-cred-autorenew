FROM golang:alpine as build

WORKDIR /app
COPY . .
RUN go build -o k8s-ecr-cred-autorenew  .

FROM alpine:latest
RUN apk --no-cache add ca-certificates
COPY --from=build /app/k8s-ecr-cred-autorenew .
CMD ["./k8s-ecr-cred-autorenew"]

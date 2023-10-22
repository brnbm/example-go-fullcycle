FROM golang:1.21.3-alpine3.18 AS builder
WORKDIR /app
COPY fullcyle .

FROM scratch
WORKDIR /app
COPY --from=builder app/fullcyle .

ENTRYPOINT ["./fullcyle"]

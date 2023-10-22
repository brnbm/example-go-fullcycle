FROM golang:1.21-alpine

WORKDIR /usr/src/app

COPY fullcyle .

ENTRYPOINT [ "./fullcyle" ]

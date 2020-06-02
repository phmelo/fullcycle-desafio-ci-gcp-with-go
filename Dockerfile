FROM golang:alpine

WORKDIR /app
COPY ./src/*.go ./

RUN pwd
RUN ls
RUN go test
RUN go build ./*.go
RUN ./main


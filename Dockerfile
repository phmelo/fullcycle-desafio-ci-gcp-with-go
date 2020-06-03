FROM golang:alpine as builder

WORKDIR /app
COPY ./src/soma/*.go ./

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /app/soma .


FROM scratch

COPY --from=builder /app/soma .

ENTRYPOINT ["/soma"]
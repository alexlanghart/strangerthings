FROM golang:1.7.3

WORKDIR /go/src/github.com/alanghar/strangerthings

RUN go get -d -v golang.org/x/net/html
COPY . .

RUN go get ./...

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app test.go
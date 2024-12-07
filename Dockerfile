FROM golang:1.22.0

WORKDIR /parcel_app

COPY . .

RUN go mod download

RUN go build -o main . 

CMD ["./main"]
ARG GOLANG_VERSION=1.23.2

FROM golang:${GOLANG_VERSION}-alpine
ENV CGO_ENABLED 0

RUN go version
ENV GOPATH=/

COPY ./ ./

# установка psql с помощью apk
RUN apk update
RUN apk add --no-cache postgresql-client

# сделать wait-for-postgres.sh исполняемым
RUN chmod +x wait-for-postgres.sh

# сборка go приложения
RUN go mod download
RUN go build -o todo-app ./cmd/main.go

CMD ["./todo-app"]
FROM golang:1.11

LABEL maintainer="Zach Shearin <zshearin617@gmail.com>"

WORKDIR $GOPATH/src/github.com/zshearin/travisGoPipeline

COPY . .

RUN go get -d -v ./...

RUN go install -v ./...

EXPOSE 8080

CMD ["travisGoPipeline"]

FROM golang:1.10.3-stretch

LABEL maintainer="weitsung@google.com,jiayingz@google.com"

RUN mkdir -p /go/src/github.com/coreos
WORKDIR /go/src/github.com/coreos
RUN git clone https://github.com/coreos/mayday.git
WORKDIR /go/src/github.com/coreos/mayday
RUN ./build

CMD ["/bin/bash", "-c", "./bin/mayday --config default.json --danger"]

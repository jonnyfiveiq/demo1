FROM golang:latest

CMD mkdir -p /go/src/github.com/jonnyfiveiq/monitor_namespace
COPY . /go/src/github.com/jonnyfiveiq/monitor_namespace
WORKDIR /go/src/github.com/jonnyfiveiq/monitor_namespace
RUN go get -u github.com/rancher/trash
RUN go get github.com/dustin/go-humanize
RUN trash
RUN go build
CMD chmod 777 /go/src/github.com/jonnyfiveiq/monitor_namespace
CMD /go/src/github.com/jonnyfiveiq/monitor_namespace/monitor_namespace
#CMD /go/src/github.com/jonnyfiveiq/monitor_namespace

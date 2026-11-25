FROM golang:1.26-alpine

WORKDIR /app
COPY . .

RUN cd tour && go build -o /usr/local/bin/tour-ru .

ENV HOME=/tmp \
    GOCACHE=/tmp/gocache \
    GOPATH=/tmp/go

EXPOSE 7860
CMD ["sh", "-c", "tour-ru -http=0.0.0.0:${PORT:-7860} -openbrowser=false -playground=true"]

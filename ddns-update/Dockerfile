FROM alpine:3.6

RUN apk add --no-cache curl

WORKDIR /app
COPY update-ddns.sh .

CMD ["./update-ddns.sh"]

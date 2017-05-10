FROM alpine:3.5

MAINTAINER Oleg Kulik "okulik@gorillagroup.com"

RUN apk update && apk add varnish

EXPOSE 80 6082

CMD ["varnishd", "-F"]

FROM python:3.6.5-alpine
RUN apk add --update git \
  && git clone -q https://github.com/DennisMitchell/jellylanguage.git \
  && apk del git \
  && rm -rf /var/cache/apk/* \
  && cp jellylanguage/jelly/__main__.py jellylanguage/scripts/jelly `#dirty hack` \
  && pip3 install --upgrade ./jellylanguage \
  && rm -rf jellylanguage
ENTRYPOINT ["jelly"]

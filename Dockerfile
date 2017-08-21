FROM openjdk:8-jdk-alpine

MAINTAINER Renan Mendes Carvalho <aitherios@gmail.com>

RUN apk update && \
  apk add ca-certificates wget && \
  update-ca-certificates

RUN wget https://github.com/marytts/marytts/releases/download/v5.2/marytts-5.2.zip && \
  unzip marytts-5.2.zip && \
  rm marytts-5.2.zip

CMD ["sh", "/marytts-5.2/bin/marytts-server"]
EXPOSE 59125

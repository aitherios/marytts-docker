FROM openjdk:8-jdk-alpine

MAINTAINER Renan Mendes Carvalho <aitherios@gmail.com>

RUN apk update && \
  apk add ca-certificates wget && \
  update-ca-certificates

RUN wget https://github.com/marytts/marytts/archive/master.zip && \
  unzip master.zip && \
  rm master.zip && \
  cd marytts-master && \
  ./gradlew build

WORKDIR /marytts-master

CMD ["./gradlew", "run"]
EXPOSE 59125

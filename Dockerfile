FROM alpine:edge
MAINTAINER Andreas Pfeiffer - Netstack <pfeiffer@netstack.de>

#update keys
RUN apk update
RUN apk add -X https://dl-cdn.alpinelinux.org/alpine/v3.16/main -u alpine-keys
RUN apk update

#Install JAVA and Gradle
RUN apk add openjdk21

#Install Bash & git
RUN apk add bash
RUN apk add git

CMD ["/bin/bash"]

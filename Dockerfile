# Stable Alpine Linux release
FROM alpine:3.24

LABEL org.opencontainers.image.authors="Netstack GmbH"
LABEL org.opencontainers.image.description="Alpine Linux with OpenJDK 21, Bash and Git"

# Install Java 21 JDK and utilities
RUN apk add --no-cache \
    openjdk21-jdk \
    bash \
    git \
    openssh-client \
    ca-certificates \
    && update-ca-certificates

# Verify Java installation during build
RUN java -version && javac -version

CMD ["/bin/bash"]

FROM registry.fedoraproject.org/fedora:latest

ENV VERSION=0.10.2

RUN dnf -y install java-latest-openjdk

RUN curl -sSL "https://github.com/AsamK/signal-cli/releases/download/v${VERSION}/signal-cli-${VERSION}.tar.gz" | tar xzv -C /opt
RUN ln -sf "/opt/signal-cli-${VERSION}/bin/signal-cli" /usr/local/bin/

RUN useradd -m user
USER user

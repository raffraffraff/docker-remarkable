FROM ubuntu:bionic

ARG USER
ARG UID

ENV DEBIAN_FRONTEND=noninteractive

RUN groupadd --gid ${UID} ${USER}
RUN useradd --uid ${UID} --gid ${UID} --shell /bin/bash --create-home ${USER}

RUN apt-get update && apt-get install -y wget
RUN wget -O /tmp/remarkable.deb https://remarkableapp.github.io/files/remarkable_1.87_all.deb && \
    apt-get install -y -q --no-install-recommends /tmp/remarkable.deb

USER ${USER}

ENTRYPOINT ["/usr/bin/remarkable"]

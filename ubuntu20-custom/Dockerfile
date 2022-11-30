FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive \
    JAVA_VERSION=8

# RUN  dpkg --add-architecture i386

RUN apt-get update && apt-get install -y \
    sudo \
    net-tools \
    iputils-ping \
    mysql-client \ 
    curl \
    gpg \
    adduser \
    binutils \
    binutils-common \
    apt \
    rsync \
    sed \
    tar \
    unzip \
    wget \
    x11-common \
    x11-utils \
    x11-xkb-utils \
    xauth

# Make new user, but... I using gosu
# RUN useradd -ms /bin/bash user1

CMD ["/bin/bash"]

USER root

# Independed from download (ubuntu20)
COPY gosu /usr/sbin/gosu

# Copy entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN ["chmod", "+x", "/usr/local/bin/entrypoint.sh"]
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

WORKDIR /home/user/



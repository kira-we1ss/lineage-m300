FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    adb \
    bc \
    bison \
    build-essential \
    ca-certificates \
    ccache \
    curl \
    erofs-utils \
    fastboot \
    flex \
    g++-multilib \
    gcc-multilib \
    git \
    git-lfs \
    gnupg \
    gperf \
    imagemagick \
    kmod \
    lib32readline-dev \
    lib32z1-dev \
    libdw-dev \
    libelf-dev \
    libgnutls28-dev \
    liblz4-tool \
    libncurses5 \
    libsdl1.2-dev \
    libssl-dev \
    libtinfo5 \
    libxml2 \
    libxml2-utils \
    lz4 \
    lzop \
    openssh-client \
    p7zip-full \
    patch \
    pngcrush \
    protobuf-compiler \
    python-is-python3 \
    python3-pip \
    python3-protobuf \
    rsync \
    schedtool \
    squashfs-tools \
    unzip \
    xsltproc \
    xxd \
    xz-utils \
    zip \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

ARG USER_UID=1000
ARG USER_GID=1000

RUN groupadd --gid "$USER_GID" builder \
    && useradd --create-home --uid "$USER_UID" --gid "$USER_GID" --shell /bin/bash builder \
    && mkdir -p /work \
    && chown builder:builder /work

WORKDIR /work
USER builder

CMD ["sleep", "infinity"]

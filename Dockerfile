FROM debian:bullseye-slim
ENV DEBIAN_FRONTEND=noninteractive

ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -o Acquire::Check-Valid-Until=false -y update && apt-get -y install \
	bc \
	bison \
    build-essential \
    bzip2 \
	bzr \
	cmake \
	cmake-curses-gui \
	cpio \
	device-tree-compiler \
	flex \
	git \
	imagemagick \
	libncurses5-dev \
	locales \
	make \
	p7zip-full \
	rsync \
	sharutils \
	scons \
	tree \
	unzip \
	vim \
	wget \
	zip \
	pkg-config \
	yasm \
	nasm \
	libtool \
	autoconf \
	automake \
	python3 \
	python3-dev \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/workspace
WORKDIR /root

COPY support .
RUN ./build-toolchain.sh
RUN ./add-sysroot.sh
RUN cat ./setup-env.sh >> .bashrc

VOLUME /root/workspace
WORKDIR /root/workspace

CMD ["/bin/bash"]
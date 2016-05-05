FROM node:4.4.3
MAINTAINER Alfred UC b6pzeusbc54tvhw5jgpyw8pwz2x6gs@gmail.com

RUN apt-get update \
 && apt-get install -y -q python2.7-dev \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/* \
 && cd ~ \
 && git clone https://github.com/vim/vim.git \
 && cd vim \
 && ./configure --enable-pythoninterp --with-python-config-dir=$(python2.7-config --configdir) \
 && make \
 && make install \
 && rm -rf ~/vim

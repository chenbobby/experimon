FROM debian:bookworm

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y build-essential
RUN apt-get install -y libbpfcc
RUN apt-get install -y libelf-dev
RUN apt-get install -y clang
RUN apt-get install -y openssh-server
RUN apt-get install -y curl
RUN apt-get install -y git
RUN apt-get install -y zsh
RUN apt-get install -y sudo
RUN apt-get install -y vim

RUN groupadd --gid 1000 debian
RUN useradd --uid 1000 --gid 1000 -m debian
RUN usermod --append --groups sudo debian
RUN echo "debian:password" | chpasswd

EXPOSE 22
ENTRYPOINT service ssh start && sh

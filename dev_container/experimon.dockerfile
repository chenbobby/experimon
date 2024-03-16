FROM ubuntu:22.04

RUN apt-get update
RUN yes | unminimize
RUN apt-get upgrade -y
RUN apt-get install -y build-essential
RUN apt-get install -y pkg-config
RUN apt-get install -y libbpfcc
RUN apt-get install -y linux-generic
RUN apt-get install -y clang
RUN apt-get install -y openssh-server
RUN apt-get install -y curl
RUN apt-get install -y sudo
RUN apt-get install -y zsh

# Install developer tools.
RUN apt-get install -y git
RUN apt-get install -y vim


RUN useradd --create-home ubuntu
RUN echo "ubuntu:ubuntu" | chpasswd
RUN usermod --append --groups sudo ubuntu


# Setup user environment
USER ubuntu
RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs | sh -s -- -y
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN wget -O- https://aka.ms/install-vscode-server/setup.sh | sh

USER root

EXPOSE 22
ENTRYPOINT service ssh start && sh

from fedora:27

MAINTAINER alexander.neundorf@sharpreflections.com

# Just install GCC and several development centered tools

RUN dnf -y upgrade && \
    dnf -y install @"Development Tools" clang gcc-c++ vim mc joe nano emacs cmake wget curl.x86_64 strace subversion sudo man man-pages && \
    dnf clean all

RUN echo "export PS1=\"[\[\e[32m\]\u\[\e[m\]@\[\e[31m\]DOCKER\[\e[m\] \W]\\$ \"" >> /root/.bashrc

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

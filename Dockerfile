FROM ubuntu:latest
RUN apt update
RUN apt upgrade --yes
RUN apt install curl --yes
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt install --yes nodejs
RUN apt install --yes radare2
RUN apt install --yes openjdk-11-jdk
RUN apt install --yes wget
RUN wget https://dl.google.com/go/go1.16.5.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz
RUN ln -s /usr/local/go/bin/go /usr/local/bin/go
RUN rm go1.16.5.linux-amd64.tar.gz
RUN apt install --yes make clang g++ git
RUN git clone https://github.com/vlang/v
RUN cd v && make
RUN ./v/v symlink
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"


FROM ubuntu

RUN apt-get update
RUN apt-get -y install sudo git
RUN adduser --disabled-password --gecos "" per
RUN echo per:per | chpasswd
RUN adduser per sudo
RUN echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER per
WORKDIR /home/per

USER per
RUN git clone https://gitlab.com/perapp/env.git .env
RUN .env/install.sh -p

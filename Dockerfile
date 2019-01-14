####################################################
# Container image for dmod
#
#   To build the image copy the public ssh key into `id_rsa.pub`.
#
#   docker build -t mkoenig:dmod .
#   docker run -d -p 50001:22 --name dmod mkoenig:dmod
#
#   access via:
#   ssh root@<ip> -p 50000
#
#   define alias in .ssh/config:
#   Host dmod-node1
#	    User root
#	    HostName node1
#	    Port 50000
#
#   Than use dmod-node1 in runbg
#
# You can push a new image to this repository using the CLI
#
#   docker tag local-image:tagname new-repo:tagname
#   docker push new-repo:tagname

####################################################
FROM ubuntu:18.04
MAINTAINER Matthias Koenig <konigmatt@googlemail.com>

# basic apt-tools & upgrade
RUN apt-get update \
 && apt-get -y install \
    apt-utils \
    software-properties-common \
    sudo \
    git \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

# install java & R
RUN add-apt-repository -y ppa:marutter/rrutter
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
    openjdk-8-jdk-headless \
    r-base-core \
    r-base \
    r-base-dev \
    r-recommended \
    libssl-dev \
    libcurl4-openssl-dev \
    libxml2-dev \
    liblzma-dev \
    lzma \
    lzma-dev \
&& apt-get clean && rm -rf /var/lib/apt/lists/*


# set working directory
ENV DMOD /dmod
WORKDIR $DMOD

# install dmod
RUN R CMD javareconf
RUN Rscript -e 'install.packages("devtools")'
RUN Rscript -e 'devtools::install_github("dkaschek/cOde")'
RUN Rscript -e 'devtools::install_github("dkaschek/dMod")'
RUN Rscript -e 'devtools::install_github("dlill/conveniencefunctions")'

# ssh for container access
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get -y install openssh-server \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# add public ssh keys
# FIXME: this is only a hack for now
RUN mkdir -p /root/.ssh
COPY id_rsa.pub /root/.ssh/authorized_keys
RUN sed -i 's/mkoenig/root/' /root/.ssh/authorized_keys

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile


EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
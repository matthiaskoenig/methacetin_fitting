####################################################
# Container image for dmod
#
#   docker build -t mkoenig:dmod .
# You can push a new image to this repository using the CLI
#
#   docker tag local-image:tagname new-repo:tagname
#   docker push new-repo:tagname

####################################################
FROM ubuntu:18.04
MAINTAINER Matthias Koenig <konigmatt@googlemail.com>

# basic apt-tools & upgrade
RUN apt-get update
RUN apt-get -y install \
    apt-utils \
    software-properties-common \
    sudo \
    git

# install java
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get -y install openjdk-8-jdk-headless

# install R and packages
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get -y install r-base-core r-base r-base-dev r-recommended libssl-dev libcurl4-openssl-dev libxml2-dev liblzma-dev lzma lzma-dev

# ssh for container access
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get -y install openssh-server

# remove package cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# set working directory
ENV DMOD /dmod
WORKDIR $DMOD

# install dmod
RUN R CMD javareconf
RUN R -e 'install.packages("devtools")'
RUN R -e 'devtools::install_github("dlill/conveniencefunctions")'
RUN R -e 'devtools::install_github("dkaschek/cOde")'
RUN R -e 'devtools::install_github("dkaschek/dMod")'

# COPY ./dmod_install.R $DMOD/
# RUN Rscript $DMOD/dmod_install.R


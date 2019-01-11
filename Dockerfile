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

# ssh for container access
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get -y install openssh-server \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

# set working directory
RUN R --version

ENV DMOD /dmod
WORKDIR $DMOD

# install dmod
RUN R CMD javareconf
RUN Rscript -e 'install.packages("devtools")'
RUN Rscript -e 'devtools::install_github("dkaschek/cOde")'
RUN Rscript -e 'devtools::install_github("dkaschek/dMod")'
RUN Rscript -e 'devtools::install_github("dlill/conveniencefunctions")'

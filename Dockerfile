FROM centos:7

# CI runner

RUN \
    yum install -y gcc-c++ make &&\
    yum install -y zip unzip &&\
    yum install -y git git-lfs &&\
    yum install -y curl wget rsync &&\
    yum install -y ImageMagick

RUN \
    curl --silent --location https://rpm.nodesource.com/setup_8.x | bash - &&\
    yum install -y nodejs

RUN \
    GIT_LFS_VERSION=2.3.4 &&\
    echo 'Downloading LFS release...' &&\
    curl -sL https://github.com/git-lfs/git-lfs/releases/download/v${GIT_LFS_VERSION}/git-lfs-linux-amd64-${GIT_LFS_VERSION}.tar.gz | tar xz &&\
    mv git-lfs-*/git-lfs /usr/bin/git-lfs && git lfs install

MAINTAINER Ricardo Tomasi <ricardobeat@gmail.com>
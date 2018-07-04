FROM centos:7
COPY . /srv/
RUN yum install -y gcc gcc-c++ \
                   libtool libtool-ltdl \
                   make cmake \
                   git \
                   pkgconfig \
                   sudo \
                   automake autoconf \
                   yum-utils rpm-build \
                   zlib-devel \
                   libselinux-devel \
                   libuuid-devel \
                   apr-devel apr-util-devel \
                   pcre-devel \
                   openldap-devel \
                   lua-devel \
                   libxml2-devel \
                   openssl-devel && \
    yum clean all
USER root
ENV FLAVOR=rpmbuild OS=centos DIST=el7
CMD rpmbuild -tb /srv/httpd-2.4.33.tar.bz2
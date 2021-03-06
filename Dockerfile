FROM		centos:centos7
MAINTAINER 	JAkub Scholz "www@scholzj.com"

# Install all builder dependencies
USER root

RUN yum -y install epel-release
RUN yum -y install wget tar rpm-build rpmdevtools gcc gcc-c++ cmake make libuv-devel libuuid-devel openssl-devel swig \
                   python-devel ruby-devel php-devel perl-devel java-1.8.0-openjdk-devel epydoc doxygen perl-Test-Exception.noarch \
                   perl-Test-Simple.noarch cyrus-sasl.x86_64 cyrus-sasl-devel.x86_64 cyrus-sasl-plain.x86_64 cyrus-sasl-md5.x86_64 \
                   createrepo ncftp python-setuptools boost-devel pkgconfig help2man graphviz nss-devel nspr-devel xqilla-devel \
                   xerces-c-devel ruby libdb-cxx-devel libaio-devel perl-ExtUtils-MakeMaker.noarch libtool libdb4-cxx-devel \
                   libibverbs-devel librdmacm-devel

# Nothing to run
CMD    /bin/bash

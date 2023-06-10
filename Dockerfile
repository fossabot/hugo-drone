FROM rockylinux/rockylinux:8.4
ENV container docker
RUN yum update -y && yum install -y wget && yum clean all && rm -rf /var/cache/yum
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.113.0/hugo_0.113.0_Linux-64bit.tar.gz && tar -xzvf hugo_* && mv -v hugo /usr/local/bin/hugo && rm -rf hugo_*.tar.gz LICENSE README.md
RUN /usr/local/bin/hugo version

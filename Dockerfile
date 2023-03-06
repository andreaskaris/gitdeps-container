FROM registry.fedoraproject.org/fedora:34
RUN yum install git python npm -y
COPY script.sh /script.sh
RUN /script.sh
RUN mkdir /mount
WORKDIR /mount

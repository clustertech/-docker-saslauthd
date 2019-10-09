FROM centos:7
ENV container docker
RUN yum install -y cyrus-sasl cyrus-sasl-plain cyrus-sasl-ldap; \
yum clean all; \
mkdir /etc/saslauthd; \
ln -s /etc/saslauthd/saslauthd.conf /etc/saslauthd.conf
COPY . /
ENTRYPOINT /startsaslauthd.sh

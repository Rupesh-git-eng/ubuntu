FROM registry.access.redhat.com/ubi9/ubi:9.6
RUN  dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
RUN  dnf install -y pv coreutils && yum clean all && rm -rf /var/cache/yum/* ## for lighter container size

EXPOSE 8080

CMD ["tail", "-f", "/dev/null"]

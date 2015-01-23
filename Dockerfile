FROM centos:centos7
MAINTAINER Sri Prasanna "k.sriprasanna@gmail.com"
ADD http://dl.alfresco.com/release/community/5.0.c-build-00145/alfresco-community-5.0.c-installer-linux-x64.bin /tmp/alfresco.bin
RUN ["chmod", "a+x", "/tmp/alfresco.bin"]
ADD install_opts /tmp/install_opts
RUN ["yum", "install", "-y", "hostname", "libreoffice"]
ADD install.sh /tmp/install.sh
RUN ["chmod", "a+x", "/tmp/install.sh"]
ADD my_init.sh /sbin/my_init.sh
RUN ["chmod", "a+x", "/sbin/my_init.sh"]
EXPOSE 8080
ENTRYPOINT ["/sbin/my_init.sh"]

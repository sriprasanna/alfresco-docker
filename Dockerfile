FROM centos
MAINTAINER Sri Prasanna "k.sriprasanna@gmail.com"
ADD http://dl.alfresco.com/release/community/4.2.f-build-00012/alfresco-community-4.2.f-installer-linux-x64.bin /tmp/alfresco-community-4.2.f-installer-linux-x64.bin
RUN ["chmod", "a+x", "/tmp/alfresco-community-4.2.f-installer-linux-x64.bin"]
ADD install_opts /tmp/install_opts
RUN ["hostname", "localhost"]
RUN ["/tmp/alfresco-community-4.2.f-installer-linux-x64.bin", "--optionfile", "/tmp/install_opts"]
EXPOSE 8080
ENTRYPOINT ["service", "alfresco", "start"]

#!/bin/sh
/tmp/alfresco.bin --optionfile /tmp/install_opts
chmod a+x /sbin/my_init
service alfresco status

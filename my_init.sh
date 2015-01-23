#!/bin/sh
/usr/sbin/chown postgres -R /opt/alfresco/alf_data/postgresql
/usr/sbin/service alfresco start
/usr/bin/tail -f /opt/alfresco/tomcat/logs/*

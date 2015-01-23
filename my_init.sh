#!/bin/sh
/usr/sbin/service alfresco start
/usr/bin/tail -f /opt/alfresco/tomcat/logs/*

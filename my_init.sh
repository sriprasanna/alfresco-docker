#!/bin/sh
/usr/sbin/service start alfresco
/usr/bin/tail -f /opt/alfresco/tomcat/logs/*

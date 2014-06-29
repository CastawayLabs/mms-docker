#!/bin/bash

sed -i "/mmsApiKey=/c\mmsApiKey=${MMS_KEY}" /etc/mongodb-mms/monitoring-agent.config

/usr/bin/mongodb-mms-monitoring-agent -conf /etc/mongodb-mms/monitoring-agent.config 2>&1

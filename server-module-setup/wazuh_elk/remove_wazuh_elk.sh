#!/bin/bash
sudo systemctl stop wazuh-manager.service
sudo systemctl stop elasticsearch.service
sudo systemctl stop kibana.service
sudo systemctl stop filebeat.service
sudo apt-get remove elasticsearch logstash kibana wazuh-manager wazuh-api


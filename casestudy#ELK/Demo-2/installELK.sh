#!/bin/bash

sudo apt update
sudo apt-get upgrade -y
sudo apt-get install default-jre -y

# install elasticsearch
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
echo "deb https://artifacts.elastic.co/packages/oss-7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

sudo apt-get update
sudo apt-get install elasticsearch -y

sudo mv /tmp/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

sudo service elasticsearch start
sudo curl http://localhost:9200

# install logstash
sudo apt-get install logstash

# install kibana
sudo apt-get install kibana

sudo mv /tmp/kibana.yml /etc/kibana/kibana.yml
sudo service kibana start

# install filebeats
sudo apt-get install metricbeat
sudo service metricbeat start

# Start LogStash
sudo mv /tmp/apache-01.conf /etc/logstash/conf.d/apache-01.conf
sudo service logstash start

#!/bin/bash

echo -e "
\e[42mBriefly introduction:\e[0m
- The script is used to setup monitoring tool of your Celestis DAS node.
- All collected metrics will be output Prometheus and Grafana
"

echo -e "\nYour public IP (use the command \033[0;31mcurl -s ifconfig.me\033[0m to get IP): " 
read HOST_IP

echo -e "\nYour authorization token of DA node: "
read NODE_AUTH_TOKEN

echo -e "\nYour DA node id: "
read NODE_ID


cd $HOME
git clone https://viennguyenbkdn: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@github.com/viennguyenbkdn/Celestia_DAS_Monitoring_Setup

sed -i.bak -e "s/^HOST_IP=.*/HOST_IP=$HOST_IP/g" $HOME/Celestia_DAS_Monitoring_Setup/.env
sed -i.bak -e "s/^NODE_AUTH_TOKEN=.*/NODE_AUTH_TOKEN=\"$NODE_AUTH_TOKEN\"/g" $HOME/Celestia_DAS_Monitoring_Setup/.env
sed -i.bak -e "s/^NODE_ID=.*/NODE_ID=\"$NODE_ID\"/g" $HOME/Celestia_DAS_Monitoring_Setup/.env


chmod -R 777 $HOME/Celestia_DAS_Monitoring_Setup 
cd $HOME/Celestia_DAS_Monitoring_Setup 

docker-compose -f docker-compose.yml up -d


PORT_GRAFANA=$(sed -n 's/^PORT_GRAFANA=\(.*\)/\1/p' $HOME/Celestia_DAS_Monitoring_Setup/.env) 


echo -e "\n\033[0;32mYou have finished installation of monitoring DA node\033[0m"
echo -e "\nLogin Grafana link: \033[0;31mhttp://$HOST_IP:$PORT_GRAFANA\033[0m"

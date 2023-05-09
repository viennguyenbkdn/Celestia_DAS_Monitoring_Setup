# Celestia_DAS_Monitoring_Setup
### 1. Briefly Introduction
- This repo is used to setup Monitoring tool of Celestia DAS node that includes
  + Input data: 
    * Celestia DA node metrics collected by Otelcol and script
    * Current status of monitored DA node
    * Current status of hardware of DA node
  + Output
    * Grafana monitoring tool

### 2. Detail description
- Structure of repo
```
Celestia_DAS_Monitoring_Setup/
├── da_exporter # This part is to collect status of DA node via API and convert to metrics of Prometheus format
│   └── script
│       ├── celestia_node.sh 
│       └── config.yaml
├── docker-compose.yml # Docker compose file contains all configuration
├── grafana # This part is to setup Grafana monitoring tool
│   ├── dashboards
│   │   └── Celestia-DA-node.json
│   ├── dashboards.yml
│   ├── datasource.yml
│   └── grafana.ini
├── otelcol # This part is to setup OTELCOL tool which collect all input data from metrics of DA node, node-exporter, da_exporter then send to OTEL of Celestia team and our prometheus tool
│   └── config.yaml
├── prometheus # This part is to setup Prometheus monitoring tool
│   └── prometheus.yml
└── README.md
```

### 3. Manual Installation
- Run below command
```
cd $HOME
wget https://raw.githubusercontent.com/viennguyenbkdn/Celestia_DAS_Monitoring_Setup/main/celestia_das_monitoring_setup.sh
chmod +x $HOME/celestia_das_monitoring_setup.sh
./celestia_das_monitoring_setup.sh
```

- Login Grafana link shown in result of last script => select `Dashboards` => `Browse`
 
  ![image](https://user-images.githubusercontent.com/91453629/232376637-f7422623-0371-4412-9778-739342b53152.png)

- Select attached dashboard `Celestia_DA_Node` as below
![image](https://user-images.githubusercontent.com/91453629/232376375-265689bd-5db7-4617-bcec-d74ad83e4fbb.png)

- So now u can monitor your node via Grafana monitoring tool.
 
* Celestia DA Node
  ![image](https://user-images.githubusercontent.com/91453629/237025409-33673517-05c1-418e-a2bf-74f1ab99e204.png)

* Server hardware information
  ![image](https://user-images.githubusercontent.com/91453629/237025786-990682f6-ebe5-41a9-bc67-e204e1405c36.png)

- If you wanna monitor more DA node, just add more datasource to Prometheus.

- Let's enjoy, hope u can monitor ur node better and share more metrics of DA node to Celestia community

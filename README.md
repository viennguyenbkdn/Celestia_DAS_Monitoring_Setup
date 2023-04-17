# Celestia_DAS_Monitoring_Setup
### 1. Briefly Introduction
- This repo is used to setup Monitoring tool of Celestia DAS node that includes
  + Input data: 
    * Celestia DA node metrics
    * Current status of monitored DA node
    * Current status of hardware of DA node
  + Output
    * Grafana monitoring tool

### 2. Manual Installation
- Run below command
```
cd $HOME
wget https://raw.githubusercontent.com/viennguyenbkdn/Celestia_DAS_Monitoring_Setup/main/celestia_das_monitoring_setup.sh
chmod +x $HOME/celestia_das_monitoring_setup.sh
./celestia_das_monitoring_setup.sh
``
- Login Grafana link shown in result of last script => select `Dashboards` => `Browse`
![image](https://user-images.githubusercontent.com/91453629/232376243-a9a23317-60d2-4ab0-9d0c-01a76001ac78.png)

- Select attached dashboard `Celestia_DA_Node` as below
![image](https://user-images.githubusercontent.com/91453629/232376375-265689bd-5db7-4617-bcec-d74ad83e4fbb.png)

- So now u can monitor your node via Grafana monitoring tool.
![image](https://user-images.githubusercontent.com/91453629/232376495-283b752b-6cff-4d70-b936-834d956a9d42.png)


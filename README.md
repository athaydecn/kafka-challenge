Kafka-challenge
=========


Preparing your environment
------------

Installing Terraform:
```bash
$ wget https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip
$ sudo unzip terraform_0.11.14_linux_amd64.zip -d /usr/local/bin
$ terraform --version
``` 

Installing Ansible:
```bash
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get install ansible
$ sudo vi /etc/ansible/ansible.cfg
    [inventory]
    enable_plugins = ini

    [ssh_connection]
    ssh_args = -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no
``` 


Provisioning AWS Infrastructure
------------

```bash
git clone https://github.com/athaydecn/kafka-challenge.git
cd terraform/myvpc/
terraform ini
terraform apply
cd terraform/myinstances/
terraform ini
terraform apply
``` 


Installing tools and configuring servers
------------

- Zookeeper
- Kafka
- Docker
- Prometheus
- Grafana

```bash
cd ../ansible/
vi hosts
ansible-playbook site.yml -i hosts
ansible-playbook monitor.yml -i hosts
``` 


Testing Kafka
------------

Creating kafka topic:
```bash
ssh centos@<kafka_instance>
/etc/kafka/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic test-topic
``` 
Starting Java Application Kafka Consumer:
```bash
ssh centos@<app-1_instance>
sudo docker run -d -e KAFKA_SERVER="<kafka_instance>:9092" -e KAFKA_TOPIC="test-topic" -e KAFKA_COUNT_MSG="10" athaydecn/app-kafka-consumer:latest
``` 
Starting Java Application Kafka Producer:
```bash
ssh centos@<app-2_instance>
sudo docker run -d -e KAFKA_SERVER="<kafka_instance>:9092" -e KAFKA_TOPIC="test-topic" -e KAFKA_COUNT_MSG="10" athaydecn/app-kafka-producer:latest
``` 

Monitoring Kafka
------------

Open Grafana dashboard on your browser
http://<grafana_instance>:3000/dashboards

#!/bin/sh

sudo apt update

#Installation de python3 et pip pour gerer les paquets logiciels de Python
sudo apt install -y python3-pip
sudo yum install python3


INFRASTRUCTURE AS CODE ---------------------------------------------------------------------------------------------------------------
                           
                           #  Docker https://docs.docker.com/engine/install/ubuntu/                   
 This script is meant for quick & easy install via:
#   $ curl -fsSL https://get.docker.com -o get-docker.sh
#   $ sh get-docker.sh
                           
                           # ANSIBLE
#https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#pip-install
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

                          # TERRAFORM
#How to install terraform https://www.terraform.io/downloads 
get -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

                          # KUBERNETES
#Install kubernetes kubeadm kubectl and kubelet ---------------------------------------------------------------

#Install kubelet
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

# Install kubectl  https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

#Install Kubeadm   https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/

                             # Installation de HELM
                             
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh



CICD -----------------------------------------------------------------------------------------------------------------------------------------------------------

                             # GITLAB
https://docs.gitlab.com/ee/install/docker.html#install-gitlab-using-docker-compose
                             # JENKINS
#https://www.jenkins.io/doc/book/installing/linux/
                                                              # GIT
#https://git-scm.com/book/fr/v2/D%C3%A9marrage-rapide-Installation-de-Git    
sudo apt install git-all

                              

SUPERVISION ----------------------------------------------------------------------------------------------------------------------------------------------------
                         # PROMETHEUS 
https://prometheus.io/docs/prometheus/latest/installation/

                         # GRAFANA
 https://grafana.com/grafana/download?platform=docker  
 
 
 
 CLOUD-----------------------------------------------------------------------------------------------------------------------------------------------------------
                        # CLOUDFOUNDRY         https://tutorials.cloudfoundry.org/cf-and-k8s/docs/overview/
           



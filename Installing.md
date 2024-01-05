# Vagrantfile and Scripts for Streamlined Kubernetes Setup using Kubeadm [Ideal for CKA/CKAD and CKS Exam Preparation]

## Prerequisites

1. Ensure a functional Vagrant setup.
2. Have a workstation with at least 8 GB of RAM, as the VMs utilize 3 vCPUs and 4+ GB RAM.

## Setting Up the Cluster

To initiate the cluster provisioning, execute the following commands:

```shell
cd cicd/vagrant-kubeadm-kubernetes
vagrant up
vagrant ssh master
kubectl top nodes
kubectl get po -n kube-system
```

When run for the first time, Vagrant will download the Ubuntu box specified in the Vagrantfile, which is a one-time
process.

## Step 6: Deploying a Sample Nginx App

To test the cluster, deploy a sample Nginx app and confirm accessibility over the nodePort:

```shell
kubectl apply -f https://raw.githubusercontent.com/scriptcamp/kubeadm-scripts/main/manifests/sample-app.yaml
```

This step ensures a functional Kubernetes environment, providing a practical foundation for tackling CKA/CKAD and CKS
exams.

## Shutdown, Restart, and Destroy the Cluster

To shut down the Kubernetes VMs, execute the halt command.

```shell
vagrant halt
```

To bring it up again.

```shell
vagrant up
```

To destroy the VMs,

```shell
vagrant destroy
```

# Accessing the Kubernetes Cluster From Your Workstation Terminal

After a successful execution of Vagrant, you will find a "configs" folder within the cloned repository, containing
essential files such as "config," "join.sh," and "token," dynamically generated during runtime.

To interact with the cluster from your workstation terminal, copy the "config" file to your $HOME/.kube folder. Ensure
that you have kubectl installed on your workstation.

For instance, on a Mac, with the "vagrant-kubeadm-kubernetes" folder as the current directory:

```shell
mkdir -p $HOME/.kube
cp configs/config $HOME/.kube
```

Alternatively, you can set a Kubeconfig environment variable by executing the following command from the "
vagrant-kubeadm-kubernetes" folder where the Vagrantfile is located:

```shell
export KUBECONFIG=$(PWD)/configs/config
```

Once the kubeconfig (config) file is in your local $HOME/.kube directory, you can run kubectl commands against the
cluster. Verify the configuration by listing the cluster nodes:

```shell
kubectl get nodes
```

To access the Kubernetes dashboard, run the following command to set up a proxy:

```shell
kubectl proxy
```

The "token" file inside the "configs" folder contains the sign-in token for the Kubernetes dashboard. If you intend to
use the Kubernetes dashboard, log in with the token from the following URL:

[http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/login](http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/login)
# Minikube Setup Guide

Setting up a Minikube cluster using Docker is a straightforward process, and you can automate the provisioning using
Terraform. Follow the steps below to create your Minikube cluster with Docker.

## Prerequisites

Make sure you have the following prerequisites installed on your system:

- [Docker](https://docs.docker.com/get-docker/)
- [Terraform](https://www.terraform.io/downloads.html)

## Cluster Provisioning Steps

1. **Access minikube folder:**

```bash
cd minikube
```

2. **Initialize Terraform:**

Run the following command to initialize Terraform:

```bash
terraform init
```

3. **Provision the Minikube Cluster:**

Execute the Terraform apply command to provision the Minikube cluster:

```bash
terraform apply
```

Terraform will prompt you to confirm the changes. Type "yes" and press Enter.

```text
Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value:
```

Type "yes" and press Enter.

4. **Wait for Provisioning to Complete:**

Terraform will now provision the Minikube cluster using Docker. Wait for the process to complete. Once finished,
Terraform will provide output indicating the completion of the setup.

5. **Access Your Minikube Cluster:**

After the provisioning is successful, you can access your Minikube cluster using the standard Minikube commands, such
as:

```bash
minikube status
minikube dashboard
```

These commands will give you information about the Minikube cluster status and open the Kubernetes dashboard in your
default web browser, respectively.

## Cleanup

If you want to remove the Minikube cluster and clean up resources, use the following Terraform command:

```bash
terraform destroy
```

Terraform will prompt for confirmation before destroying the resources. Type "yes" and press Enter to proceed with the
cleanup.

Now you have successfully set up a Minikube cluster using Docker and Terraform. Enjoy exploring Kubernetes in your local
environment!
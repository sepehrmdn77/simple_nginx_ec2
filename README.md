# **Simple Nginx EC2 Automation**

## **Overview**
This repository demonstrates the automation of setting up a web-ready environment on an Amazon EC2 instance using **Terraform** and **Ansible**. Here's what it accomplishes:

1. **EC2 Instance Creation**: Terraform is used to provision an EC2 instance on AWS, equipped with **Python** and **Git**, installed automatically via **User Data** during boot.
2. **Docker Image Deployment**: Using Ansible, a **Docker Image** (`sepehrmdn/nginx_hello`) from your Docker Hub repository is pulled and run on the instance. This image contains a simple **Nginx server** that displays "Hello World".
3. The environment is ready for developing web-based projects.

---

## **Features**
- Automated provisioning of AWS infrastructure with **Terraform**.
- Pre-installed Python and Git using User Data during EC2 setup.
- **Dockerized Nginx server**, deployed with **Ansible**.
- Supports simple web server functionalities, serving as a platform for quick web development.

---

## **Prerequisites**
Make sure the following requirements are met before running this project:
- **AWS Account** with appropriate permissions.
- **IAM Role and Key Pair** configured for EC2.
- Installed tools on your local machine:
  - [Terraform](https://developer.hashicorp.com/terraform/downloads)
  - [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html)
  - **AWS CLI** (properly configured)
  - **Python** (version 3.x or later)
  - A terminal with SSH access.

---

## **Getting Started**

1. **Clone the Repository**
First, clone the repository to your local machine:
    ```bash
    git clone https://github.com/sepehrmdn77/simple_nginx_ec2.git
    cd simple_nginx_ec2

2. **Configure the Terraform Variables**
Create a terraform.tfvars file to specify required variables:
    ```bash
    aws_access_key = "Your AWS Access Key" # or export it using terraform document
    aws_secret_key = "Your AWS Secret Key" # or export it using terraform document
    region         = "eu-west-2"
    key_name       = "Your Key Pair Name"
    ami            = "ami-091f18e98bc129c4e" # Ubuntu 20.04 LTS AMI

3. **Deploy Resources with Terraform**
Run the following commands to deploy the infrastructure:
    ```hcl
    terraform init
    terraform apply

4. **Configure EC2 Instance with Ansible**
Use Ansible to install Docker and deploy the Nginx container:
    ```bash
    ansible-playbook -i inventory playbook.yml -vv

## Docker Image Details

This project uses the Docker Image sepehrmdn/nginx_hello available on Docker Hub. The container runs a simple Nginx server, which serves a "Hello World" message. The environment can be easily extended to support larger web applications.

## Project Structure

The project directory is organized as follows:
simple_nginx_ec2/
├── ansible_playbook       # Main play book, roles, hosts and etc.
├── module/EC2_instance    # EC2 instance module
├── .gitignore             # ignored files
├── README.md              # Project documentation
├── main.tf                # Terraform configuration for AWS resources


## How It Works

1.Terraform provisions an EC2 instance in the eu-west-2 (London) region.

2.User Data scripts pre-install Python and Git on the instance.

3.Ansible installs Docker, pulls the sepehrmdn/nginx_hello Docker Image, and starts the container.

4.Nginx serves a "Hello World" message on the port number 8181.

## Contributing

We welcome contributions to this project. Please fork the repository, make your changes, and submit a pull request.

## Author

Sepehr Maadani - [sepehrmdn77](https://github.com/sepehrmdn77)

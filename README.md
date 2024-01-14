# Real-time Deployment on Kubernetes Cluster using Jenkins CI/CD Pipeline

## Overview

This project focuses on achieving real-time deployments of applications on a Kubernetes cluster using a Continuous Integration/Continuous Deployment (CI/CD) pipeline. The pipeline is orchestrated by Jenkins, with Ansible handling both image building and Kubernetes management. The integration of Docker, Git, and Kubernetes ensures a streamlined and automated deployment process.

## Project Workflow

1. **Infrastructure Setup:**
   - Three servers are required: Jenkins, Ansible, and a Kubernetes cluster.
   - Ansible serves dual roles for image building and Kubernetes management.

2. **Docker File Preparation:**
   - Developed application code and created a Docker file, acting as a blueprint for building the container image.

3. **Version Control and Webhook Integration:**
   - Hosted the Docker file in a Git repository.
   - Integrated Git with Jenkins using webhooks for automated deployments triggered by repository commits.

4. **Jenkins CI/CD Pipeline:**
   - Orchestrates the deployment workflow.
   - Utilizes Groovy scripts for Jenkins jobs with multiple stages:
      - **Build Stage:** Builds the Docker image.
      - **Tagging Stage:** Tags the Docker image.
   - Jenkins is notified of new commits through webhooks, initiating the automated deployment process.
   - Jenkins securely sends the Docker file to Ansible via SSH.

5. **Docker Image Build and Push:**
   - Ansible takes the Docker file and builds an image with application code and dependencies.
   - The built Docker image is pushed to Docker Hub for storage and sharing.

6. **Deployment with Ansible:**
   - Ansible establishes an SSH connection to the Kubernetes cluster and executes playbooks.
   - Utilizes three playbooks:
      - **ansible.yml:** Sets up the Kubernetes cluster environment.
      - **deployment.yml:** Specifies deployment configurations (name, image, metadata, replica, etc.).
      - **service.yml:** Sets up a Kubernetes Service, making the application accessible within the cluster.

7. **Kubernetes Cluster Deployment:**
   - Once the Docker image is available on Docker Hub, Kubernetes fetches the latest image.
   - Kubernetes manages pod deployment across the cluster, ensuring high availability and scalability.
   - The deployed container becomes accessible for use.

## Getting Started

1. Ensure three servers are set up: Jenkins, Ansible, and a Kubernetes cluster.
2. Create a Docker file for the application.
3. Host the Docker file on a Git repository.
4. Integrate Git with Jenkins using webhooks.
5. Set up Jenkins jobs for building and tagging the Docker image.
6. Configure Ansible to receive Docker files securely from Jenkins.
7. Utilize Ansible playbooks for Kubernetes cluster setup and application deployment.
8. Ensure Docker images are pushed to Docker Hub.
9. Verify Kubernetes cluster deployment for accessibility and scalability.

## Contributors

- Pratham Sharma


Feel free to contribute and enhance the project!
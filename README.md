# Kubernetes Python App - CPU and Memory Usage Monitoring

This repository contains the configuration files for deploying a Python application on a Kubernetes cluster. The Python application monitors CPU and memory usage.

## Overview

- **Python Application**: A Flask-based Python app that monitors and displays CPU and memory usage.
- **Kubernetes Deployment and Service**: The Kubernetes manifests for deploying and exposing the Python app on an EKS cluster.
- **GitHub Actions Workflow**: Automates the deployment process using a CI/CD pipeline.

## Directory Structure

- **/.github/workflows**: Contains the CI/CD pipeline for deploying the app to EKS.
- **/k8s**: Holds the Kubernetes manifests, including deployment and service files.
- **/templates**: Contains the HTML templates used by the Python app.
- **/app.py**: The Python application that displays CPU and memory usage.
- **/Dockerfile**: Dockerfile for building the Python application image.
- **/requirements.txt**: Dependencies required by the Python app.

## Related Repository

This project relies on the infrastructure provisioned by the Terraform repository. Make sure the AWS EKS cluster and necessary resources are set up.

See the related repository: [AWS Infrastructure Setup](<https://github.com/DiogoBarros03/aws_infra_setup>)

## How to Use

1. Ensure that the EKS cluster is provisioned and accessible.
2. Deploy the Kubernetes manifests to the cluster.
3. To access the application locally, run the following command to forward the port:

   ```bash
   kubectl port-forward svc/my-flask-service 5001:5001
   ```
## References

- [Terraform Documentation](https://www.terraform.io/docs)
- [AWS EKS Documentation](https://docs.aws.amazon.com/eks)
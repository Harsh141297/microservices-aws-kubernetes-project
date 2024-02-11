# Project Deployment Documentation

### Introduction

This documentation provides an overview of the deployment architecture for a web application leveraging AWS CodeBuild, Amazon ECR, and Amazon EKS. It is designed to offer experienced developers an in-depth understanding of the project's deployment mechanisms, the integration of various AWS services, and Kubernetes for orchestrating containerized applications. The goal is to elucidate the principles and practices underpinning our automated build and deployment pipeline, empowering developers to efficiently manage and release new builds.

### Architectural Overview

The project employs a CI/CD pipeline that integrates with GitHub, AWS CodeBuild, Amazon ECR, and Amazon EKS, facilitating automatic builds and deployments of a web application that interacts with a PostgreSQL database within a Kubernetes cluster. This architecture is designed for resilience, scalability, and ease of updates, ensuring that new code commits trigger a seamless pipeline from build to deployment.

### Key Components

- AWS CodeBuild: Automates the process of building Docker images upon detecting code changes in a GitHub repository, ensuring that new features or fixes are promptly integrated.
- Amazon ECR: Serves as a Docker container registry for storing and managing built images securely, providing a reliable repository for our application images.
- Amazon EKS: Manages the deployment and scaling of the application's containerized environments, utilizing Kubernetes for orchestration.
- PostgreSQL Deployment: Utilizes Helm charts for deploying PostgreSQL within the EKS cluster, offering a flexible and efficient approach to database management in a containerized ecosystem.

### Deployment Strategy

##### Continuous Integration and Deployment

The CI/CD pipeline is at the heart of the deployment process, orchestrated to ensure that any changes to the codebase are automatically built, tested, and deployed:

1. Code Commit: Developers push updates to the GitHub repository, initiating the CI/CD pipeline.
2. Build Process: AWS CodeBuild compiles the code, builds a new Docker image, and upon successful build and test phases, pushes this image to Amazon ECR.
3. Deployment: The updated Docker image is deployed to the Amazon EKS cluster, where the application is rolled out to serve users. This step is managed through Kubernetes deployments, ensuring that the application is always available and scalable.
4. Database Management: PostgreSQL is deployed via Helm charts within the EKS cluster, decoupling application logic from data persistence and allowing for independent scaling and management.
Releasing New Builds
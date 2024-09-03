# ruby-rails-service-oriented-app

A simple example of Ruby on Rails app with several services, deployed into Docker host or Kubernetes

# Application architecture

## Plain application architecture

This is the logical app architecture that could be deployed on any compatible environment for Ruby and PostgreSQL.

![App logical architecture](./docs/images/high-level-logical-architecture.jpg)


## Application architecture deployed to Docker host

![App logical architecture deployed to Docker](./docs/images/high-level-logical-architecture-on-DOCKER.jpg)

## Plain application architecture deployed to Kubernetes cluster

![App logical architecture deployed to Kubernetes](./docs/images/high-level-logical-architecture-on-KUBERNETES.jpg)

### Database

Of course, the database could always be places externally to the Docker host or the Kubernetes cluster, in production environments, if needed. But for the sake of simplicity and easyness of deployment of the example app, the database is also deployed in Docker host or Kubernetes cluster as a stateful container.



# Get started

**Copy/rename the example-rename-to.env to .env:** Since the .env files won't be uploaded to the GitHub repo for security reasons, you need to rename the Copy/rename that file for your own .env file.

# Deployment to Docker host
Check the commands at the file:

[**commands for docker compose.txt**](/commands%20for%20docker%20compose.txt)

# Deployment to Kubernetes

There are two options for Kubernetes deployment in this app:
- A. Deployment using KUBECTL and .YAML deployment files.

    [**/k8s/helm/Commands to deploy with KUBECTL.txt**](/k8s/kubectl/Commands%20to%20deploy%20with%20KUBECTL.txt)


- B. Deployment using HELM and CHART deployment files.

    [**/k8s/helm/Commands to deploy with HELM.txt**](/k8s/helm/Commands%20to%20deploy%20with%20HELM.txt)




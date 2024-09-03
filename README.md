# Ruby on Rails service oriented example application with deployment to Docker and Kubernetes

A simple example of Ruby on Rails app with several services, deployed into Docker host or Kubernetes

# Application architecture

## Plain application architecture

This is the logical app architecture that could be deployed on any compatible environment for Ruby and PostgreSQL.

![App logical architecture](./docs/images/high-level-logical-architecture.jpg)

Note that you can run this application on plain Ruby on Rails, however, you'd need to have the PostgreSQL database hosted in any database server in the first place. That's why for development is also a lot easier to deploy and use the test database as a Docker container. 



## Application architecture deployed to Docker host

You can deploy de whole app into a Docker host (Linux containers) with 'docker compose up', such as the following environments:

- Docker Desktop (for Windows or Mac)
- Docker installed on a Linux box or VM

![App logical architecture deployed to Docker](./docs/images/high-level-logical-architecture-on-DOCKER.jpg)

Note that when deploying to Docker, it's great for development, testing and debugging once deployed with "Docker compose". But for a production environment, a Docker host is not ideal since each container can only have a single instance, so you cannot scale-out at the container level.

## Plain application architecture deployed to Kubernetes cluster

In this repo I implemented two possible approaches when deploying to K8s:

A. **Deploy with KUBECTL** and related deployment .YAML files. This way is recommended when getting started and learning Kubernetes.

B. **Deploy to HELM** and related CHART files. HELM is more advanced and recommended when you have multiple environment stages (Dev, Test, Prod, etc.) in CI/CD and it provides advanced capabilities such as Versioning and Rollbak, Templating, Release management, Conditional logic for CI/CD, etc.)

![App logical architecture deployed to Kubernetes](./docs/images/high-level-logical-architecture-on-KUBERNETES.jpg)

Note that when deploying to Kubernetes, it's great for a production environment since you can cannot scale out to any number of pod/container instances within the cluster. 


## Database

Of course, the database could always be placed externally to the Docker host or the Kubernetes cluster, in production environments, if needed. But for the sake of simplicity and easyness of deployment of the example app, the database is also deployed in Docker host or Kubernetes cluster as a stateful container.

### Data migrations and seed

As part of the deployment, you will need to run data migrations and seed so the database has some meaningful data to query to from the application (Articles and Authors, for the example).


# Get started

1. **Clone this repo locally.**

```bash
git clone https://github.com/CESARDELATORRE/ruby-rails-service-oriented-app.git
```


2. **Copy/rename the example-rename-to.env to .env:** Since the .env files won't be uploaded to the GitHub repo for security reasons, you need to rename the Copy/rename that file for your own .env file.



# Deployment to Docker host
Check the commands at the file:

[**commands for docker compose.txt**](/commands%20for%20docker%20compose.txt)

# Deployment to Kubernetes

There are two options for Kubernetes deployment in this app:
- A. Deployment using KUBECTL and .YAML deployment files.

    [**/k8s/helm/Commands to deploy with KUBECTL.txt**](/k8s/kubectl/Commands%20to%20deploy%20with%20KUBECTL.txt)


- B. Deployment using HELM and CHART deployment files.

    [**/k8s/helm/Commands to deploy with HELM.txt**](/k8s/helm/Commands%20to%20deploy%20with%20HELM.txt)




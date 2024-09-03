#!/bin/bash

# Deploy Helm charts one by one with a 5-second wait between each
# Namespace creation is optional, if argument is provided.

# Check if the --create-namespace argument is provided
CREATE_NAMESPACE=""
if [[ "$1" == "--create-namespace" ]]; then
  CREATE_NAMESPACE="--create-namespace"
fi

# Deploy Helm charts one by one with a 5-second wait between each

echo "Deploying postgresql..."
helm install postgresql ./charts/postgresql/. --namespace ruby-rails-apis-poc $CREATE_NAMESPACE
sleep 5

echo "Deploying articlesrailsapi..."
helm install articlesrailsapi ./charts/articlesrailsapi/. --namespace ruby-rails-apis-poc $CREATE_NAMESPACE
sleep 5

echo "Deploying frontendwebapp..."
helm install frontendwebapp ./charts/frontendwebapp/. --namespace ruby-rails-apis-poc $CREATE_NAMESPACE
sleep 5

echo "Deploying db-migrate-and-seed..."
helm install db-migrate-and-seed ./charts/db-migrate-and-seed/. --namespace ruby-rails-apis-poc $CREATE_NAMESPACE
sleep 5

echo "Deployment into Kubernetes completed."
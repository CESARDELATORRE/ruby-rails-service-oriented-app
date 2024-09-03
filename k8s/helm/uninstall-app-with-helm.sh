#!/bin/bash

# Uninstall Helm charts one by one

echo "Uninstalling frontendwebapp..."
helm uninstall frontendwebapp --namespace ruby-rails-apis-poc

echo "Uninstalling articlesrailsapi..."
helm uninstall articlesrailsapi --namespace ruby-rails-apis-poc

echo "Uninstalling db-migrate-and-seed..."
helm uninstall db-migrate-and-seed --namespace ruby-rails-apis-poc

echo "Uninstalling postgresql..."
helm uninstall postgresql --namespace ruby-rails-apis-poc

echo "Removing namespace..."
kubectl delete namespace ruby-rails-apis-poc

echo "Application Uninstallation completed."
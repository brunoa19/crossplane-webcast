#!/bin/bash

. ./scripts/env_vars.sh

# Use envsubst to replace env var values in the provider-config YAML template file
envsubst \
    < crossplane/provider-config-gcp.template.yml \
    > crossplane/provider-config-gcp.yml

# Configure the GCP Provider
kubectl apply -f crossplane/provider-config-gcp.yml

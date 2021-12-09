#!/bin/bash

# Set environement variables for Google Cloud
export GCP_PROJECT_ID="cosimages-206514"
export GCP_SERVICE_ACCOUNT_NAME="bruno-973@$GCP_PROJECT_ID.iam.gserviceaccount.com"
export GCP_SERVICE_ACCOUNT_KEYFILE="/Users/brunoandrade/Downloads/cosimages-cpdemo.json"
export BASE64ENCODED_GCP_PROVIDER_CREDS=$(base64 $GCP_SERVICE_ACCOUNT_KEYFILE | tr -d "\n") # base64 encode the GCP credentials

export GKE_CLUSTER_NAME="cp-demo-dev"
export GKE_CLUSTER_ZONE="us-west1-a"


# Set environment vars for Crossplane installation
export CROSSPLANE_VERSION="1.5.1"
export CROSSPLANE_NS="crossplane-system"

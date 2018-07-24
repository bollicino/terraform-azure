#!/bin/sh
echo "Setting environment variables for Terraform"
export ARM_SUBSCRIPTION_ID=<Azure Subscription ID>
export ARM_CLIENT_ID=<Azure Service Principal Client ID>
export ARM_CLIENT_SECRET=<Azure Service Principal Client Password>
export ARM_TENANT_ID=<Azure Subscription Tenant ID>

# Not needed for public, required for usgovernment, german, china
export ARM_ENVIRONMENT=public

# Plan Terraform 
terraform plan -var-file=demo.tfvars -out=out.tfplan 

# Apply Terraform plan 
terraform apply out.tfplan
# DigitalOcean Infrastructure Setup

This repository contains Terraform configurations to manage DigitalOcean infrastructure for development and production environments.

## Prerequisites

- [DigitalOcean Account](https://cloud.digitalocean.com/registrations/new)
- [DigitalOcean Personal Access Token](https://cloud.digitalocean.com/account/api/tokens)

## Repository Structure

```
infra-v1/
├── README.md
└── env/
    ├── dev/                 # Development environment
    │   ├── main.tf
    │   ├── providers.tf
    │   ├── variables.tf
    │   └── terraform.tfvars
    └── prod/                # Production environment
        ├── main.tf
        ├── providers.tf
        ├── variables.tf
        └── terraform.tfvars
```

## Getting Started

1. Clone the repository:
```sh
git clone <repository-url>
cd infra-v1
```

2. Navigate to your desired environment:
```sh
cd env/dev  # For development
# or
cd env/prod # For production
```

3. Create a `terraform.tfvars` file with your DigitalOcean credentials:
```hcl
do_token = "xxx"
access_id="xxx"
secret_key="xxx"
```

4. Initialize Terraform:
```sh
terraform init
```

5. Review the infrastructure plan:
```sh
terraform plan
```

6. Apply the configuration:
```sh
terraform apply
```

--- 

## Managing Infrastructure

### Creating Resources
```sh
terraform apply
```

### Updating Resources
1. Make changes to the terraform files
2. Run:
```sh
terraform plan
terraform apply
```

### Destroying Resources
```sh
terraform destroy
```

## Important Notes

- Always review the plan output before applying changes
- Keep your DigitalOcean API token secure and never commit it to version control
- Use terraform workspaces if you need to manage multiple instances of the same environment
- Make sure to back up your Terraform state files
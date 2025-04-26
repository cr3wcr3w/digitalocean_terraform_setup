# https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
# https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs\
#  - Resources : create something
#  - Data Sources : read only

# terraform init    # (first time only - to initialize plugins)
# terraform plan    # (see what it will do)
# terraform apply   # (actually deploy it)
# terraform destroy # (destroy)

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {}
variable "access_id" {}
variable "secret_key" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token

  spaces_access_id  = var.access_id
  spaces_secret_key = var.secret_key
}

# Create Droplet
resource "digitalocean_droplet" "backend-1" {
  image   = "ubuntu-24-04-x64"
  name    = "backend-1"
  region  = "sgp1"
  size    = "s-1vcpu-1gb-amd"
}

# Create Database
resource "digitalocean_database_cluster" "postgres-prod" {
  name       = "postgres-prod"
  engine     = "pg"
  version    = "15"
  size       = "db-s-1vcpu-1gb"
  region     = "sgp1"
  node_count = 1
}

# Create Database
resource "digitalocean_database_cluster" "postgres-dev" {
  name       = "postgres-dev"
  engine     = "pg"
  version    = "15"
  size       = "db-s-1vcpu-1gb"
  region     = "sgp1"
  node_count = 1
}

# Create Space Bucket
resource "digitalocean_spaces_bucket" "bucket" {
  name   = "backend-bucket"
  region = "sgp1"
  acl = "private"
}
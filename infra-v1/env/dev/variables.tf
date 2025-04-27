# ENV
# Set the variable value in *.tfvars file
variable "do_token" {}
variable "access_id" {}
variable "secret_key" {}
# variable "ssh_key_pub" {}

# global variable
variable "digitalocean_region" {
    default = "sgp1"
}

# variable For Droplet
variable "digitalocean_droplet_image" {
    default = "ubuntu-24-04-x64"
}
variable "digitalocean_droplet_name" {
    default = "backend-1-dev"
}
variable "digitalocean_droplet_size" {
    default = "s-1vcpu-1gb-amd"
}

# variable For Database
variable "digitalocean_database_cluster_name" {
    default = "postgres-1-dev"
}
variable "digitalocean_database_cluster_engine" {
    default = "pg"
}
variable "digitalocean_database_cluster_version" {
    default = "15"
}
variable "digitalocean_database_cluster_size" {
    default = "db-s-1vcpu-1gb"
}
variable "digitalocean_database_cluster_node_count" {
    default = 1
}

# variable For Space Bucket
variable "digitalocean_spaces_bucket_name" {
    default = "backend-bucket-dev"
}
variable "digitalocean_spaces_bucket_acl" {
    default = "private"
}

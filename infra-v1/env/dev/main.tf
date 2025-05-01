# set ssh key
# resource "digitalocean_ssh_key" "ssh-b1" {
#   name       = "Terraform Example"
#   public_key = file(var.ssh_key_pub)
# }

# Create Droplet
resource "digitalocean_droplet" "backend-1" {
  image   = var.digitalocean_droplet_image
  name    = var.digitalocean_droplet_name
  region  = var.digitalocean_region
  size    = var.digitalocean_droplet_size
#   ssh_keys = [digitalocean_ssh_key.ssh-b1.fingerprint]
}

# Create Database
# resource "digitalocean_database_postgresql_config" "postgres-1-config" {
#   cluster_id = digitalocean_database_cluster.postgres-1.id
#   timezone   = "UTC"
# }
# resource "digitalocean_database_cluster" "postgres-1" {
#   name       = var.digitalocean_database_cluster_name
#   engine     = var.digitalocean_database_cluster_engine
#   version    = var.digitalocean_database_cluster_version
#   size       = var.digitalocean_database_cluster_size
#   region     = var.digitalocean_region
#   node_count = var.digitalocean_database_cluster_node_count
# }

# Create Space Bucket
# resource "digitalocean_spaces_bucket" "bucket" {
#   name   = var.digitalocean_spaces_bucket_name
#   region = var.digitalocean_region
#   acl = var.digitalocean_spaces_bucket_acl
# }
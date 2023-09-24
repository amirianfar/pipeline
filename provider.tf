terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  registry_auth {
    address  = "https://registry.hub.docker.com"
    
  }

}

# resource "docker_auth" "my_auth" {
#   username = var.docker_username
#   password = var.docker_password
# }

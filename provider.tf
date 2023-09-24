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
    username = var.dockerhub_username
    password = var.dockerhub_password
  }
}
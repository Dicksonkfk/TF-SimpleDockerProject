terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "this" {
  name         = var.docker_image_name
  keep_locally = false
}

resource "docker_container" "this" {
  image = docker_image.this.image_id
  name  = var.docker_container_name

  ports {
    internal = 80
    external = 8080
  }
}
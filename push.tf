resource "docker_image" "goterraform" {
  name = "amirianfar/goterraform"
  build {
    context    = "."
    dockerfile = "Dockerfile"
  }
  provisioner "local-exec" {
    command = "docker push amirianfar/goterraform"
  }
}

resource "docker_container" "goterraform" {
  name  = "amirianfar/goterraform"
  image = "amirianfar/goterraform"
  ports {
    internal = 5000
    external = 5000
  }
}


variable "dockerhub_username" {}
variable "dockerhub_password" {}


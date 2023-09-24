resource "docker_image" "goterraform" {
  name = "amirianfar/goterraform"
  build {
    context    = "."
    dockerfile = "Dockerfile"
  }
  provisioner "local-exec" {
    command = "docker push amirianfar/goterraform"
  }
  # auth = docker_auth.my_auth
}

resource "docker_container" "goterraform" {
  name  = "amirianfar/goterraform"
  image = "amirianfar/goterraform"
  ports {
    internal = 5000
    external = 5000
  }
}





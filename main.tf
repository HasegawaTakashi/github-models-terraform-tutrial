resource "docker_image" "nginx1" {
  name = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  image = docker_image.nginx1.image_id
  name         = "x"
  ports {
      internal = 80
    external = 8080
  }
  labels {
    label = "env"
    value = "test"
  }
}

plugin "docker" {
  enabled = true
}

rule "docker_container_invalid_name" {
  enabled = true
  name_pattern = "^[a-z][a-z0-9-]{2,}$"
}

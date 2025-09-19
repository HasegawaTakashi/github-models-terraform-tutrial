package terraform.docker.naming

deny[msg] {
  input.resource_type == "docker_container"
  not re_match("^[a-z][a-z0-9-]{3,}$", input.resource.name)
  msg := sprintf("docker_container name '%s' does not follow naming convention", [input.resource.name])
}

package terraform.docker.label

deny[msg] {
  input.resource_type == "docker_container"
  not input.resource.labels
  msg := sprintf("docker_container '%s' must have labels", [input.resource.name])
}

deny[msg] {
  input.resource_type == "docker_container"
  input.resource.labels == {}
  msg := sprintf("docker_container '%s' has empty labels", [input.resource.name])
}

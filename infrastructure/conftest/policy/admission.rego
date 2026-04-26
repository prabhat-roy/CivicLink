package main

deny[msg] {
  input.kind == "Deployment"
  not input.spec.template.spec.containers[_].resources.limits.memory
  msg := "container missing resources.limits.memory"
}

deny[msg] {
  input.kind == "Deployment"
  c := input.spec.template.spec.containers[_]
  not startswith(c.image, "harbor.civiclink.internal/")
  msg := sprintf("image %s not from harbor.civiclink.internal", [c.image])
}

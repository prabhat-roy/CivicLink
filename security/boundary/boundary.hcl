controller {
  name = "controller-1"
  database { url = "postgresql://boundary@postgres-boundary/civiclink" }
}
worker {
  name = "worker-civiclink-1"
  controllers = ["controller-1.boundary.civiclink.internal"]
}
kms "awskms" {
  purpose = "root"
  key_id  = "alias/civiclink-boundary"
}

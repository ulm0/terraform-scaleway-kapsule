output "id" {
  value       = scaleway_k8s_cluster.this.id
  description = "The ID of the cluster."
}

output "created_at" {
  value       = scaleway_k8s_cluster.this.created_at
  description = "The creation date of the cluster."
}

output "updated_at" {
  value       = scaleway_k8s_cluster.this.updated_at
  description = "The last update date of the cluster."
}

output "apiserver_url" {
  value       = scaleway_k8s_cluster.this.apiserver_url
  description = "The URL of the Kubernetes API server."
}

output "wildcard_dns" {
  value       = scaleway_k8s_cluster.this.wildcard_dns
  description = "The DNS wildcard that points to all ready nodes."
}

output "kubeconfig" {
  value       = scaleway_k8s_cluster.this.kubeconfig
  description = "The Kubernetes configuration."
  sensitive   = true
}

output "status" {
  value       = scaleway_k8s_cluster.this.status
  description = "The status of the Kubernetes cluster."
}

output "upgrade_available" {
  value       = scaleway_k8s_cluster.this.upgrade_available
  description = "Set to `true` if a newer Kubernetes version is available."
}

output "node_pools" {
  value = {
    for node_pool in scaleway_k8s_pool.this :
    node_pool.name => node_pool.*
  }
  description = "Node Pools configuration and status."
}

output "private_subnet_ids" {
  description = "A list of private subnet ids"
  value       = "" 
}

output "public_subnet_ids" {
  description = "A list of public subnet ids"
  value       = "subnet-06a3185b09b262633,subnet-0da23f58db0a66275,subnet-0cd045f6b77e33cf5" 
}

output "availability_zones" {
  description = "A list of availability zones"
  value       = data.aws_availability_zones.available.names
}

output "security_group_id" {
  description = "Security group id to attach to worker nodes"
  value       = aws_security_group.workers.id
}

output "instance_profile_name" {
  description = "Instance profile name to attach to worker nodes"
  value       = aws_iam_instance_profile.vcluster_node.name
}

output "cluster_tag" {
  description = "Global tag of all provisioned AWS resources"
  value       = local.cluster_tag
}

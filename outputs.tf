
output "test_instance_public_ip" {
  description = "The public IP of the example EC2 instance."
  value       = module.test_instance.public_ip
}


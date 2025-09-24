output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "Public IP assigned to the instance (if any)"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "Private IP assigned to the instance"
  value       = aws_instance.this.private_ip
}
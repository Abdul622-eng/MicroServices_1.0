output "ec2_public_ip" {
  value = aws_instance.microservices.public_ip
}

output "ec2_public_dns" {
  value = aws_instance.microservices.public_dns
}

output "ecr_repository_urls" {
  value = {
    for name, repo in aws_ecr_repository.services :
    name => repo.repository_url
  }
}

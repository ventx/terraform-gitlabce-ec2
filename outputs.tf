// Instance Name
output "instancename" {
  value = aws_instance.gitlabce.arn
}

// Instance Pupblic IPv4
output "publicip" {
  value = aws_instance.gitlabce.public_ip
}

// Userdata for gitlabce Setup
output "userdata" {
  value = aws_instance.gitlabce.user_data
}

// Instance Private IPv4
output "privateip" {
  value = aws_instance.gitlabce.private_ip
}

// Instance Type
output "instancetype" {
  value = aws_instance.gitlabce.instance_type
}

// Instance SSH Keyname
output "keyname" {
  value = aws_instance.gitlabce.key_name
}
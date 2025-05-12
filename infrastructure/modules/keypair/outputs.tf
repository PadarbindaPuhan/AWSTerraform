output "key_name" {
  description = "The name of the key pair"
  value       = aws_key_pair.machinekey.key_name
}

output "public_key" {
  description = "The public key material"
  value       = aws_key_pair.machinekey.public_key
}


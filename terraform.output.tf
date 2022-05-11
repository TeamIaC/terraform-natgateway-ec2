output "public_ip" {
    value = aws_eip.ec2_eip.public_ip
}

output "nat_gateway_public_ip" {
    value = aws_eip.nat_gateway_eip.public_ip
}

output "nat_gateway_private_ip" {
    value = aws_eip.nat_gateway_eip.private_ip
}
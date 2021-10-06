
output public_IP {
  value = aws_instance.centos[*].public_ip
}
output DNS_Name {
  value = aws_instance.centos[*].public_dns
}

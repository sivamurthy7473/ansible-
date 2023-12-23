output "igwid" {
  value = [aws_internet_gateway.igw.id]


}

# output "apacheurl" {
#   value = format("%s", "ansible_ssh_private_key_file=aws_key_pair.private.key_name","ansible_ssh_user=ubuntu",aws_instance.webinstance.public_ip)
# }

output "apacheurl" {
  value = format("%s ansible_ssh_user=%s",aws_instance.webinstance.public_ip,"ubuntu")
}






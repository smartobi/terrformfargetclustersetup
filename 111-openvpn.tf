# resource "aws_eip" "open_vpn_ip" {
#   instance = aws_instance.ec2_openvpn.id
#   tags = {
#     Name = "openvpn-ip"
#   }
# }

# resource "aws_key_pair" "ssh_key" {
#   key_name   = "ssh_key"
#   public_key = file("${path.module}/mykey.pem.pub")
# }

# resource "aws_instance" "ec2_openvpn" { 

#    ami = "ami-06aa3f7caf3a30282"  
#     instance_type = "t3.micro" 
#     key_name      = aws_key_pair.ssh_key.key_name
#     vpc_security_group_ids = [aws_security_group.main.id]
#     subnet_id     = aws_subnet.public-us-east-1a.id
#     tags = {
#     Name = "openvpn-server"
#   } 
#      user_data = file("${path.module}/install-production.sh")

# } 
# resource "aws_security_group" "main" {
#   vpc_id    = aws_vpc.main.id
#   tags = {
#     Name = "openvpn-sg"
#   }
#   egress = [
#     {
#       cidr_blocks      = [ "0.0.0.0/0", ]
#       description      = "openvpn security group"
#       from_port        = 0
#       ipv6_cidr_blocks = []
#       prefix_list_ids  = []
#       protocol         = "-1"
#       security_groups  = []
#       self             = false
#       to_port          = 0
#     }
#   ]

# # Port 22 for SSH
 
#  ingress                = [
#    {
#      cidr_blocks      = [ "0.0.0.0/0", ]
#      description      = "ssh connection to openvpn server"
#      from_port        = 22
#      ipv6_cidr_blocks = []
#      prefix_list_ids  = []
#      protocol         = "tcp"
#      security_groups  = []
#      self             = false
#      to_port          = 22
#   },
#   {
#      cidr_blocks      = [ "0.0.0.0/0", ]
#      description      = "http web connection to openvpn connection"
#      from_port        = 1194
#      ipv6_cidr_blocks = []
#      prefix_list_ids  = []
#      protocol         = "udp"
#      security_groups  = []
#      self             = false
#      to_port          = 1194
#   }
#   ]

  

  
# }
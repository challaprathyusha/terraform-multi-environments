#  ec2 instance creation
resource "aws_instance" "db" {
    ami =   "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0980121946812cd77"]
    instance_type = lookup(var.instance_type,terraform.workspace)

}
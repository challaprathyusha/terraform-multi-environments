#  ec2 instance creation
resource "aws_instance" "expense" {
    for_each =  var.instance_names
    ami =   data.aws_ami.ami_info.id
    instance_type = each.value
    vpc_security_group_ids = ["sg-0980121946812cd77"]

    tags = merge(
        var.common_tags,
        {
         Name =  each.key
         Module = each.key
        }
    )
}


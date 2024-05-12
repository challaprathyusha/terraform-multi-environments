# variables declaration for dbinstance
variable "instance_names" {
    type =  map
#    default = {
#       frontend    =   "t2.micro"
#        backend =   "t2.micro"
#        db  =   "t3.micro"
#    }
}

variable "common_tags" {
    type = map
    default = {
      project   = "Expenses"
      terraform = "True"
      environment   =   "dev"
    }
}




# r53 variables
variable "domain_name" {
    type = string
    default = "expensesnote.site"
  
}
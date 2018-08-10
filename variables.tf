
variable "subnet_names" {
  type = "map"

  default = {
    subnet1 = "newname1"
    subnet2 = "newname2"
    subnet3 = "abettersubnetname"
  }
}

#output variable

output "first_output"{
value = "this is the value through execution"
}

output "gcp_subnet1"{
value = "${var.subnet_names["subnet1"]}"
}

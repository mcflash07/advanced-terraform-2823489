# //////////////////////////////
# VARIABLES
# //////////////////////////////
variable "region" {
  default = "eu-west-1"
}

variable env_instance_type {}


variable env_instance_tags {
    type = map(string)
}

variable env_instance_count {
  type = number
}

# //////////////////////////////
# OUTPUT
# //////////////////////////////
output "instance-ip" {
  value = module.ec2_cluster.public_ip
}
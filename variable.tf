
 variable "region" {
    default = "us-west-2"
}

variable "vpc_cidr" {
    type = list(string)
    default = ["10.8.0.0/16","172.31.0.0/16","10.160.0.0/16","10.0.0.0/16","10.64.0.0/22","10.64.0.0/22","10.0.0.0/16","10.21.0.0/16"]
}

variable "tag_value" {
    type = list(string)
    default = ["harness","default","usw2-rl-testing-vpc","blank-1","test-dev-vpc","RL-HUB-VPC-A","Prod-Catalyst-VPC","DevOps-India"]
}

variable "tag_igw" {
    type = list(string)
    default = ["harness","default","usw2-rl-testing-vpc","blank-1","test-dev-vpc","RL-HUB-VPC-A","Prod-Catalyst-VPC","DevOps-India"]
}

variable "vpc-1-cidr-subnets" {
    type = list(string)
    default = ["10.8.0.0/24"]
}

variable "tag_vpc1-subnets" {
    type = list(string)
    default = ["harness"]
}


variable "vpc-2-cidr-subnets"{
    type =list(string)
    default = ["172.31.16.0/20","172.31.0.0/20"]
}


variable "tag_vpc2-subnets" {
    type = list(string)
    default = ["default_subnet_1","default_subnet_2"]
}


variable "vpc-3-cidr-subnets"{
    type =list(string)
    default = ["10.160.96.0/21","10.160.192.0/21"]
}

variable "tag_vpc3-subnets" {
    type = list(string)
    default = ["rl-testing-dmz-private-az-2a","rl-testing-db-private-az-2a"]
}

variable "vpc-4-cidr-subnets"{
    type =list(string)
    default = ["10.0.2.0/24,","10.0.1.0/24"]
}

variable "tag_vpc4-subnets" {
    type = list(string)
    default = ["blank_subnet_1","blank_subnet_2"]
}



variable "vpc-5-cidr-subnets"{
    type =list(string)
    default = ["10.64.2.0/24","10.64.0.0/24"]
}

variable "tag_vpc5-subnets" {
    type = list(string)
    default = ["test-dev-sub-private","test-dev-sub-public"]
}


variable "vpc-6-cidr-subnets"{
    type =list(string)
    default = ["10.202.20.0/24","10.202.10.0/24"]
}

variable "tag_vpc6-subnets" {
    type = list(string)
    default = ["RL-HUB-SN-A1-DMZ","RL-HUB-SN-A1-PUB"]
}


variable "vpc-7-cidr-subnets"{
     type =list(string)
    default = ["10.0.0.0/24","10.0.1.0/24"]
}

variable "tag_vpc7-subnets" {
    type = list(string)
    default = ["public_cat_subnet","private_cat_subnet"]
}

variable "vpc-8-cidr-subnets"{
    type =list(string)
    default = ["10.21.1.0/24","10.21.3.0/24"]

}

variable "tag_vpc8-subnets" {
    type = list(string)
    default = ["10.21.1.0_devops_ind_usw2_2a","10.21.3.0_devops_ind_usw2_2c"]
}

variable "AZS" {
    type = list(string)
    default = ["us-west-2a","us-west-2c"]
}

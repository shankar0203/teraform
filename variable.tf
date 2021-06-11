variable "region" {
    default = "us-west-2"
}
variable "vpc_cidr" {
    type = list(string)
    default = ["10.8.0.0/16","172.31.0.0/16","10.160.0.0/16","10.0.0.0/16","10.64.0.0/22","10.64.0.0/22","10.0.0.0/16","10.21.0.0/16"]
}
variable "tag_igw" {
    type = list(string)
    default = ["igw-harness","igw-default","usw2-rl-testing-igw","igw-(blank-2)","test-dev-igw","RL-HUB-IG-1","Prod-Catalyst-VPC-IGW","ig01_devops_india",""]
}

variable "tag_value" {
    type = list(string)
    default = ["harness","default","usw2-rl-testing-vpc","blank-1","test-dev-vpc","RL-HUB-VPC-A","Prod-Catalyst-VPC","DevOps-India"]
}

variable "vpc-1-cidr-subnet"{
    type =string
    default = "10.8.0.0/24"
}

variable "vpc-2-cidr-subnet"{
    type =string
    default = ["172.31.16.0/20","10.21.1.0/24"]
}
variable "vpc-3-cidr-subnet"{
    type =string
    default = ["10.160.96.0/21","10.160.192.0/21"]
}
variable "vpc-4-cidr-subnet"{
    type =string
    default = ["10.0.2.0/24,","10.0.0.0/24"]
}
variable "vpc-5-cidr-subnet"{
    type =string
    default = ["10.64.2.0/24","10.64.0.0/24"]
}
variable "vpc-6-cidr-subnet"{
    type =string
    default = ["10.202.20.0/24","10.202.10.0/24"]
}
variable "vpc-7-cidr-subnet"{
    type =string
    default = ["10.0.0.0/24","10.0.1.0/24"]
}
variable "vpc-8-cidr-subnet"{
    type =string
    default = ["10.21.1.0/24","10.21.3.0/24"]
}
variable "AZS"{
    type =list(string)
    default =["us-west-2a","us-west-2c"]
}

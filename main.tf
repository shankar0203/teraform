provider "aws" {
    region = var.region
}

# create vpc

resource "aws_vpc" "vpc_default" {
    count = length(var.vpc_cidr)
    cidr_block = element(var.vpc_cidr,count.index)
tags = {
    Name = element(var.tag_value,count.index)

}
}

# create igw

resource "aws_internet_gateway" "igw" {
    count = length(var.vpc_cidr)
    vpc_id = aws_vpc.vpc_default[count.index].id
tags = {
    Name = element(var.tag_igw,count.index)
}
}


# create subnet

resource "aws_subnet" "private1" {
    count = length(var.vpc-1-cidr-subnets)
    vpc_id = aws_vpc.vpc_default.0.id
    availability_zone = var.AZS.0
    cidr_block = element(var.vpc-1-cidr-subnets,count.index)
tags = {
    Name = element(var.tag_vpc1-subnets,count.index)

}
}
resource "aws_subnet" "private2" {
    count = length(var.vpc-2-cidr-subnets)
    vpc_id = aws_vpc.vpc_default.1.id
    availability_zone =element(var.AZS,count.index)
    cidr_block = element(var.vpc-2-cidr-subnets,count.index)
tags = {
    Name = element(var.tag_vpc2-subnets,count.index)

}
}

resource "aws_subnet" "private3" {
    count = length(var.vpc-3-cidr-subnets)
    vpc_id = aws_vpc.vpc_default.2.id
    availability_zone = var.AZS.0
    cidr_block = element(var.vpc-3-cidr-subnets,count.index)
tags = {
    Name = element(var.tag_vpc3-subnets,count.index)

}
}

resource "aws_subnet" "private4" {
    count = length(var.vpc-4-cidr-subnets)
    vpc_id = aws_vpc.vpc_default.3.id
    availability_zone = element(var.AZS,count.index)
    cidr_block = element(var.vpc-4-cidr-subnets,count.index)
tags = {
    Name = element(var.tag_vpc4-subnets,count.index)

}
}

resource "aws_subnet" "private5" {
    count = length(var.vpc-5-cidr-subnets)
    vpc_id = aws_vpc.vpc_default.4.id
    availability_zone = var.AZS.0
    cidr_block = element(var.vpc-5-cidr-subnets,count.index)
tags = {
    Name = element(var.tag_vpc5-subnets,count.index)

}
}

resource "aws_subnet" "private6" {
    count = length(var.vpc-6-cidr-subnets)
    vpc_id = aws_vpc.vpc_default.5.id
    availability_zone = var.AZS.0
    cidr_block = element(var.vpc-6-cidr-subnets,count.index)
tags = {
    Name = element(var.tag_vpc6-subnets,count.index)

}
}

resource "aws_subnet" "private7" {
    count = length(var.vpc-7-cidr-subnets)
    vpc_id = aws_vpc.vpc_default.6.id
    availability_zone = var.AZS.0
    cidr_block = element(var.vpc-7-cidr-subnets,count.index)
tags = {
    Name = element(var.tag_vpc7-subnets,count.index)

}
}

resource "aws_subnet" "private8" {
    count = length(var.vpc-8-cidr-subnets)
    vpc_id = aws_vpc.vpc_default.7.id
    availability_zone =element(var.AZS,count.index)
    cidr_block = element(var.vpc-8-cidr-subnets,count.index)
tags = {
    Name = element(var.tag_vpc8-subnets,count.index)

}
}

# create security grp

resource "aws_default_security_group" "default" {
  count = length(var.vpc_cidr)
  vpc_id = aws_vpc.vpc_default[count.index].id

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

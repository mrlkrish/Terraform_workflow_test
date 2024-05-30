resource "aws_vpc" "example_vpc" {
  cidr_block       = "10.0.0.0/16" // Set your desired CIDR block
  instance_tenancy = "default"      // Can be "default" or "dedicated"

  tags = {
    //Name = "example-vpc"
    Name = var.vpc_name
  }
}

resource "aws_subnet" "example_subnet" {
  //vpc_id                  = aws_vpc.example_vpc.id
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.1.0/24" // Set your desired subnet CIDR block
  availability_zone       = "us-west-1"  // Set your desired availability zone
  map_public_ip_on_launch = false          // Set to true if you want instances in this subnet to have public IP addresses

  tags = {
    //Name = "example-subnet"
    Name = var.subnet_name
  }
}
resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "abi_test_vpp"
    }
  
}


resource "aws_subnet" "name1" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.0.0/24"

    tags = {
      Name = "abi_test_subnet"
      OS   = "amazonlinux"
      Environment = "dev"
        
    }
  
}

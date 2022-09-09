# Resource: aws_route_table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table

resource "aws_route_table" "eks_public" {
  # The VPC ID.
  vpc_id = aws_vpc.eks_vpc.id

  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC internet gateway or a virtual private gateway.
    gateway_id = aws_internet_gateway.eks_int_gw.id
  }

  # A map of tags to assign to the resource.
  tags = {
    Name = "Eks public"
  }
}

resource "aws_route_table" "eks_private1" {
  # The VPC ID.
  vpc_id = aws_vpc.eks_vpc.id

  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC NAT gateway.
    nat_gateway_id = aws_nat_gateway.eks_nat_gw1.id
  }

  # A map of tags to assign to the resource.
  tags = {
    Name = "Eks private1"
  }
}

resource "aws_route_table" "eks_private2" {
  # The VPC ID.
  vpc_id = aws_vpc.eks_vpc.id

  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC NAT gateway.
    nat_gateway_id = aws_nat_gateway.eks_nat_gw2.id
  }

  # A map of tags to assign to the resource.
  tags = {
    Name = "Eks private2"
  }
}

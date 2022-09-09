# Resource: aws_internet_gateway
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway

resource "aws_internet_gateway" "eks_int_gw" {
  # The VPC ID to create in.
  vpc_id = aws_vpc.eks_vpc.id

  # A map of tags to assign to the resource.
  tags = {
    Name = "eks_int_gw"
  }
}

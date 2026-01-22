resource "aws_subnet" "this" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  availability_zone = var.availability_zone

  # If public, auto-assign public IP; private subnets don’t
  map_public_ip_on_launch = var.is_public

  tags = {
    Name = var.subnet_name
    Type = var.is_public ? "public" : "private"
  }
}

output "subnet_id" {
  value = aws_subnet.this.id
}

# קבלת פרטי ה-VPC וה-subnets הקיימים
data "aws_vpc" "existing" {
  id = "vpc-xxxxxxxx"  # שימי את ה-VPC ID שלך
}

data "aws_subnet" "subnet1" {
  id = "subnet-xxxxxxxx"  # שימי את ה-ID של ה-subnet הראשון
}

data "aws_subnet" "subnet2" {
  id = "subnet-xxxxxxxx"  # שימי את ה-ID של ה-subnet השני
}
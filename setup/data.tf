# קבלת פרטי ה-VPC וה-subnets הקיימים
data "aws_vpc" "existing" {
  id = "vpc-05a5696cc682e6b32"  # שימי את ה-VPC ID שלך
}

data "aws_subnet" "subnet1" {
  id = "subnet-090cbcccd1f8e1efc"  # שימי את ה-ID של ה-subnet הראשון
}

data "aws_subnet" "private" {
  id = "subnet-0f68cee0428669166"  # שימי את ה-ID של ה-subnet השני
}
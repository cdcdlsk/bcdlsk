# ספק AWS
provider "aws" {
  region = "us-west-2"  # שימי את האזור המתאים
}



# יצירת Security Group
resource "aws_security_group" "db_sg" {
  name_prefix = "db-sg"
  vpc_id      = data.aws_vpc.existing.id
}


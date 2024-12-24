
resource "aws_db_instance" "my_db" {
  allocated_storage    = 20
  instance_class =      var.instance_class
  engine              = var.engine
  engine_version      = var.engine_version
  identifier          = var.identifier
  db_name             = var.db_name
  username            = var.username
  password            = var.password 
  publicly_accessible = var.publicly_accessible
  storage_type        = var.storage_type
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name = aws_db_subnet_group.main.id
  skip_final_snapshot = true

  tags = {
    Name = "MyDBInstance"
  }
}

# יצירת DB Subnet Group (עם subnets הקיימים)
resource "aws_db_subnet_group" "main" {
  name        = "main-subnet-group"
  subnet_ids  = [var.prisubnet, var.pubsubnet]
  description = "Main DB subnet group"
}


# יצירת Security Group
resource "aws_security_group" "db_sg" {
  name_prefix = var.name_prefix
  vpc_id      = var.vpc_id
}

resource "aws_db_instance" "my_db" {
  allocated_storage    = 20
  instance_class =      "db.t3.micro"
  engine              = "postgres"
  engine_version      = "13.3"
  identifier          = "my-db-instance"
  db_name             = "example"
  username            = "user"
  password            = "password"
  publicly_accessible = true
  storage_type        = "gp2"
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
  subnet_ids  = [data.aws_subnet.subnet1.id, data.aws_subnet.subnet2.id]
  description = "Main DB subnet group"
}

module "RDS_postgresql" {
  source = "../modules/RDS"
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
  name_prefix = "bcd"
  vpc_id = data.aws_vpc.existing.id
  pubsubnet = data.aws_subnet.subnet1.id
  prisubnet = data.aws_subnet.private.id
}


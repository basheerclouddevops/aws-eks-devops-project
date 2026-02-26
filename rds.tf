resource "aws_db_subnet_group" "db_subnet" {
  name       = "db-subnet"
  subnet_ids = module.vpc.private_subnets
}

resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  db_name              = "appdb"
  username             = "admin"
  password             = "Password123!"
  skip_final_snapshot  = true

  db_subnet_group_name   = aws_db_subnet_group.db_subnet.name
  vpc_security_group_ids = [module.vpc.default_security_group_id]
}

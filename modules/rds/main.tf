resource "aws_db_subnet_group" "this" {
  name       = "${var.env}-db-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name        = "${var.env}-db-subnet-group"
    Environment = var.env
  }
}

resource "aws_db_instance" "this" {
  identifier             = "${var.env}-rds-instance"
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_name                = var.db_name
  username               = var.username
  password               = var.password
  db_subnet_group_name   = aws_db_subnet_group.this.name
  vpc_security_group_ids = var.vpc_security_group_ids
  skip_final_snapshot    = true
  multi_az               = var.env == "prod" ? true : false

  tags = {
    Name        = "${var.env}-rds"
    Environment = var.env
  }
}

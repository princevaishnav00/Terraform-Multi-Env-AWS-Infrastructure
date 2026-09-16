resource "aws_key_pair" "this" {
  count      = var.public_key_path != "" ? 1 : 0
  key_name   = "${var.env}-project-key"
  public_key = file(var.public_key_path)

  tags = {
    Environment = var.env
  }
}

resource "aws_instance" "this" {
  count                       = var.instance_count
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = length(aws_key_pair.this) > 0 ? aws_key_pair.this[0].key_name : null
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids
  associate_public_ip_address = true

  root_block_device {
    volume_size = var.env == "prod" ? 30 : 10
    volume_type = "gp3"
  }

  tags = {
    Name        = "${var.env}-ec2-${count.index + 1}"
    Environment = var.env
  }
}

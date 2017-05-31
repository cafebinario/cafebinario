provider "aws" {
  region = "${ var.region }"
}

resource "aws_db_instance" "postgresql" {
  allocated_storage          = "${var.allocated_storage}"
  engine                     = "postgres"
  engine_version             = "${var.engine_version}"
  identifier                 = "${var.database_identifier}"
  instance_class             = "${var.instance_type}"
  storage_type               = "${var.storage_type}"
  name                       = "${var.database_name}"
  password                   = "${var.database_password}"
  username                   = "${var.database_username}"
  publicly_accessible        = "${var.publicly_accessible}"
  backup_retention_period    = "${var.backup_retention_period}"
  backup_window              = "${var.backup_window}"
  maintenance_window         = "${var.maintenance_window}"
  auto_minor_version_upgrade = "${var.auto_minor_version_upgrade}"
  final_snapshot_identifier  = "${var.final_snapshot_identifier}"
  skip_final_snapshot        = "${var.skip_final_snapshot}"
  copy_tags_to_snapshot      = "${var.copy_tags_to_snapshot}"
  multi_az                   = "${var.multi_availability_zone}"
  port                       = "${var.database_port}"
  db_subnet_group_name       = "${var.subnet_group}"
  storage_encrypted          = "${var.storage_encrypted}"
 
  tags {
    Name        = "Terraform_PostgreSQL"
    Project     = "${var.project}"
    Environment = "${var.environment}"
  }

  provisioner "local-exec" {
  command = "echo ${aws_db_instance.postgresql.address} > /tmp/hostname"
  }

  provisioner "local-exec" {
  command     = "./prepare_database.sh"
  }
}

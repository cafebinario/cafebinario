variable "project" {
  default = "test-database"
}

variable "environment" {
  default = "test"
}

variable "region" {
  default = "us-east-1"
}

variable "allocated_storage" {
  default = "10"
}

variable "engine_version" {
  default = "9.6.2"
}

variable "instance_type" {
  default = "db.t2.micro"
}

variable "storage_type" {
  default = "gp2"
}

variable "vpc_id" {
  default = "vpc-05b4ea63"
}

variable "database_identifier" {
  default = "test"
}

variable "database_name" {
  default = "test"
}

variable "database_password" {
  default = "blablabla"
}

variable "database_username" {
  default = "test"
}

variable "database_port" {
  default = "5432"
}

variable "publicly_accessible" {
  default = "true"
}

variable "backup_retention_period" {
  default = "30"
}

variable "backup_window" {
  default = "04:00-04:30"
}

variable "maintenance_window" {
  default = "sun:04:30-sun:05:30"
}

variable "auto_minor_version_upgrade" {
  default = true
}

variable "final_snapshot_identifier" {
  default = "terraform-rds"
}

variable "skip_final_snapshot" {
  default = true
}

variable "copy_tags_to_snapshot" {
  default = false
}

variable "multi_availability_zone" {
  default = false
}

variable "storage_encrypted" {
  default = false
}

variable "subnet_group" {
  default = "default"
}

variable "alarm_cpu_threshold" {
  default = "75"
}

variable "alarm_disk_queue_threshold" {
  default = "10"
}

variable "alarm_free_disk_threshold" {
  # 5GB
  default = "5000000000"
}

variable "alarm_free_memory_threshold" {
  # 128MB
  default = "128000000"
}

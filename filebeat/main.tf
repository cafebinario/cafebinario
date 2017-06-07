provider "aws" {
  region = "${ var.region }"
}

data "aws_ami" "filebeat" {
  most_recent = true
  filter {
    name   = "name"
    values = ["filebeat-*"]
  }
}

resource "aws_instance" "filebeat" {
  ami                    = "${ data.aws_ami.filebeat.id }"
  instance_type          = "${ var.instance_type }"
  key_name               = "${ var.keypair_name }"
  tags {
    Name = "filebeat-${ data.aws_ami.filebeat.id }"
  }
}

provider "aws" {
  region = "${ var.region }"
}

data "aws_ami" "logstash" {
  most_recent = true
  filter {
    name   = "name"
    values = ["logstash-*"]
  }
}

resource "aws_instance" "logstash" {
  ami                    = "${ data.aws_ami.logstash.id }"
  instance_type          = "${ var.instance_type }"
  key_name               = "${ var.keypair_name }"
  vpc_security_group_ids = ["sg-58f77026"]
  tags {
    Name = "logstash-${ data.aws_ami.logstash.id }"
  }
}

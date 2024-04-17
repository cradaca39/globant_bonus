provider "aws" {
    access_key = "xxxxxxxxxxxxxxx"
    secret_key = "xxxxxxxxxxxxxxx"
    region = "us-east-1"
}

resource "aws_instance" "globant_instance" {
  ami                    = "ami-051f8a213df8bc089"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-08f5feb24dcc29368"
  vpc_security_group_ids = ["sg-00c851848676ea8b0"]
  key_name               = "globant_key"
  iam_instance_profile = "ec2_globant" # rol set with permission as admin
  user_data = filebase64("user_data.sh")
  root_block_device {
    volume_type = "gp2"
    volume_size = "10"
  }

  tags = {
    Name = "globant_instance"
  }
}
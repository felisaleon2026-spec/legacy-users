resource "aws_instance" "app" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  iam_instance_profile   = var.iam_instance_profile

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y nodejs npm git
    cd /home/ec2-user
    git clone https://github.com/felisaleon2026-spec/legacy-users.git
    cd legacy-users
    npm install
    nohup node app.js > /var/log/app.log 2>&1 &
  EOF

  tags = {
    Name = "legacy-users-server"
  }
}
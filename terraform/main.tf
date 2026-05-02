provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "devops_sg" {
  name        = "devops-final-project-sg"
  description = "Allow SSH, Docker app ports, and Kubernetes NodePort ports"

  ingress {
    description = "SSH from my IP only"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["102.89.76.131/32"]
  }

  ingress {
    description = "Portfolio and Java app ports"
    from_port   = 8081
    to_port     = 8082
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Kubernetes NodePort range for project apps"
    from_port   = 30080
    to_port     = 30082
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "devops-final-project-sg"
  }
}

resource "aws_instance" "devops_server" {
  ami                    = "ami-020cba7c55df1f615"
  instance_type          = "t3.micro"
  key_name               = "demo-kp"
  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  tags = {
    Name = "DevOps-Final-Project-Server"
  }
}

output "public_ip" {
  value = aws_instance.devops_server.public_ip
}

resource "aws_security_group" "test" {
  description = "test"
  egress {
    description = "EC2 Egress"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    #tfsec:ignore:aws-vpc-no-public-egress-sgr
    cidr_blocks = ["0.0.0.0/0"]
  }
}

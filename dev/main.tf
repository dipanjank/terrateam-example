module "my_ec2" {
  source             = "../modules/ec2-instance"
  name               = "example-instance"
  ami                = "ami-091a906f2e1e40076"
  instance_type      = "t3.micro"
  subnet_id          = "subnet-63d1c607"
  security_group_ids = ["sg-01c4b7a6f6f333b4b"]
  tags = {
    Environment = "dev"
    Purpose     = "test"
    Owner       = "team-A"
  }
}

output "ec2_id" {
  value = module.my_ec2.instance_id
}
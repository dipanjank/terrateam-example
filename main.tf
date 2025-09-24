module "my_ec2" {
  source             = "./modules/ec2-instance"
  name               = "example-instance"
  ami                = "ami-0abcdef1234567890" # replace with a valid AMI in your region
  instance_type      = "t3.micro"
  key_name           = "my-keypair" # optional
  subnet_id          = "subnet-0123456789abcdef"
  security_group_ids = ["sg-0123456789abcdef0"]
  tags = {
    Environment = "dev"
    Owner       = "team-a"
  }
}

output "ec2_id" {
  value = module.my_ec2.instance_id
}
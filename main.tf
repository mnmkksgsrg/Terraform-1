module "network" {
  source = "./modules/network"

  vpc_cidr = "10.0.0.0/16"
  public_subnets = {
    public-a = {
      subnet_cidr       = "10.0.1.0/24"
      availability_zone = "ap-northeast-1a"
    }
  }
}

module "compute" {
  source = "./modules/compute"

  ami_id = "ami-123456"
  # instance_type = #defaultを設定しているので省略可 
  public_subnet_ids     = module.network.public_subnet_ids
  aws_security_group_id = module.network.security_group_id
  key_name              = "my-keypair"
  instance_name         = "web-server"
}



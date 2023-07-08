CIDR_BLOCK  = "10.10.4.0/24"
SUBNET_CIDR_BLOCK = ["10.10.4.0/25", "10.10.4.128/25"]
ENV         = "dev"

AZ          = ["us-east-1a","us-east-1b"]
ENGINE              = "mysql"
ENGINE_VERSION      = "5.7"
INSTANCE_CLASS      = "db.t3.micro"
SKIP_FINAL_SNAPSHOT = true
FRONT_END_CIDR = "10.10.5.0/24"
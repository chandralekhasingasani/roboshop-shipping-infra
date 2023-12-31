variable "CIDR_BLOCK" {}
variable "SUBNET_CIDR_BLOCK" {}
variable "COMPONENT" {}
variable "ENV" {}
variable "AZ" {}
variable "PROJECT_NAME" {}
variable "ENGINE_VERSION" {}
variable "SKIP_FINAL_SNAPSHOT" {}
variable "ENGINE" {}
variable "INSTANCE_CLASS" {}
variable "PORT" {}
variable "NODE_COUNT" {}
variable "SPOT_INSTANCE_COUNT" {}
variable "INSTANCE_COUNT" {}
variable "INSTANCE_TYPE" {}
variable "WORKSTATION_IP" {}
variable "IAM_INSTANCE_PROFILE" {}
variable "IS_ALB_INTERNAL" {
  default = true
}
variable "FRONT_END_CIDR" {}
variable "PROMETHEUS_IP" {
  default = "172.31.90.202/32"
}

variable "linux_ami" {
  default = "ami-0686851c4e7b1a8e1"
}
# Centos Image Repo for AWS
#https://centos.org/download/aws-images/

variable "region" {
  default = "us-west-2"
}
variable "iam_profile" {
   default = "remo-avi-controller"
}
variable "vpc_id_fse" {
     description = "VPC ID"
}
variable "remo_sg_name" {
  description = "Name of the Sec Groups"
}
variable "public_ip" {
  description = "If you want a Public IP"
}
variable "image-size" {
     description = "Image size"
}
variable "se_subnet_id" {
     description = "Subnet ID"
}
variable "ec2_size" {
  default = "t3.micro"
}
variable "instance_count" {
  default = 2
}
variable "prefix" {
  default = "remo-vm-tf"
}
variable "ssh_user" {
  default = "centos"
}

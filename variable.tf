variable "region_name" {
    type = string
    default = "us-east-1"
  
}

variable "ami" {
    type = string
    default = "ami-0c7217cdde317cfec"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "key_name" {
    type = string
    default = "newkeypair"

  
}

variable "user" {
  default = "ubuntu"

}
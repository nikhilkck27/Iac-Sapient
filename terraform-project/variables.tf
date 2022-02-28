variable "access_key_name" {
  default = "AKIA3FN7UZAJB5CU2XOL"
}

variable "secret_key_name" {
  default = "GlJKwEioVCMjWNy0iotbJ2xQcmzGlR6zFH8B5eHL"
}

variable "region_name" {
  default = "ap-south-1"
}

variable "ami_number" {
  default = "ami-0c6615d1e95c98aca"
}

variable "micro_name" {
  default = "t2.micro"
}

variable "count_number" {
  default = "2"
}

variable "server_name" {
  type    = list(any)
  default = ["Web-server-1", "web-server-2" ]
} 

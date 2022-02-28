provider "aws" {
  access_key = var.access_key_name
  secret_key = var.secret_key_name
  region     = var.region_name
}

resource "aws_key_pair" "rsa" {
  key_name   = "id_rsa"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+b2MvxxvwFAl/zGzTVzpfeFrTQxS5zy9L5dnQ8guZ0edyPJHCalNM3fnMaNggKV/iDcYyAdUnvN1jiMDjwIfq0vi94TRYaiLI5/7hgL94U7mj0eeY1QZ0xmfqexU+vC7J8Zt5vl6mJc/B5n4d/AUToZ6u7RTIBnQq1D0RT8Cv7UzE6mkwUy/ie2A4cbQ9Dt17heEyPbMGUGW4CyhcHfT2+j5XeEFYXj/RSfsnmwy1RWrdIA7xBok7tSvI8HUWH47ozDsiy9G7R0soiAvffgPs/wnOx81RWst+N5TTAgctoScS/KFr1oGq+vv09lULKDoYgYY9c80kGh1T3RIWUohH nikhilchavan@Nikhils-MacBook-Air.local"
}


resource "aws_instance" "my-instance" {
  ami           = var.ami_number
  instance_type = var.micro_name
  count         = var.count_number
  key_name      = "id_rsa"
  tags = {
    Name = element(var.server_name, count.index)
  }

connection {
    type = "ssh"
    host = self.public_ip
    user = "ubuntu"
    private_key = file("/Users/nikhilchavan/.ssh/id_rsa")
    timeout = "4m"
 }
}

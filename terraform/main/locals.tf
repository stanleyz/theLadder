locals {
  ami = var.ami != null ? var.ami : data.aws_ami.ubuntu.id
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu*22*04*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name = "owner-id"
    # Amazon
    values = ["898082745236", "099720109477", "837727238323"]
  }
}

resource "aws_key_pair" "mini" {
  key_name   = "mini"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8nujO2AI3lOSxiMc9l+LnaETa5v3r3dh12q019tGh2Hay5OkY9nkNAPANbBhrUgzupVyoi5qI6SQ5MLKvjzEJwrq53TQCxEqf3YkzgSsd9IecKOcDmyiLW4iCP1N7lNRU+fOLm+BRVb4HwR2sKFPQYZ5F79s8XfqNB8n4yVmIhTZAxFtmJWSPUE1mskInf9RjqVQ1aPoOApqzurU4d13GDn4Veo2vz8tWJ9hs6nzfX/WlCiALJSCqFog7K+QqMbsXQntSO6UrbFy+kZ40N+59KTHIARoqB9KC5IIhh4rd2vVJv/cUoizTKPnSBQhR/pL3SdsveOzoa6VYZEDn2NP5E53bby4hhnKwxQzobYOPugz16qV563/LGhYoEy5xbqtzE1ZQgmU2GnZanPwW2F43UmM2Ls6DtKeKrYCgfcJoSFPhc+/+UGKvjhd5juluDQtosjBKTBE4HP7fpem5VbA4K+nMXr9fmKXhHqb30Ri4YGmSTLKguxuPDMb1fVY86LNowDt56/pQAzrxwnHXWWQllS981VIWOUEZLshZktABmKqNRjyrAXB1gMSYYjQSpmgjsYw7+H9cMg91u0CSgQfh/h4Uz2ZUsk8l1xQKtSBWfyGWSg2eqCIqL4dsENfSc67QZHXYnpfw17pJUtwch90+pXD1p5pPm3aolAJOvyvdTw== stanley@Stanleys-Mini"
}
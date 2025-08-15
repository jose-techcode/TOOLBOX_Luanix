# Install providers

terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

# Provider 

provider "virtualbox" {}

# VirtualBox

resource "virtualbox_vm" "debian" {
  name   = "debian-13-vm"
  image  = "${path.module}/debian-13-vm.ova" # ${path.module} recommended (to not show the username)
  cpus   = 1
  memory = "2048 mib"
}
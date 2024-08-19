terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
    }
  }
}

# Configure the provider with your Cisco APIC credentials.
provider "aci" {
  # APIC Username
  username = var.user.username
  # APIC Password
  password = var.user.password
  # APIC URL
  url      = var.user.url
  insecure = true
}

resource "aci_physical_domain" "example" {
  name        = "example"
  annotation  = "tag_domain"
  name_alias  = "alias_domain"
}

resource "aci_physical_domain" "phy-terraform" {
  name        = "phy-test"
  annotation  = "tag_domain"
  name_alias  = "alias_domain"
}

resource "aci_physical_domain" "phy-example-sz" {
  name        = "another-example"
  annotation  = "tag_domain"
  name_alias  = "alias_domain"
}


#This give us the first file that we need to sert up the connections to the particular cloud platforms that we are going to use.
provider "google" {
  credentials = "${file("../account.json")}"
  project     = "velvety-glyph-211700"
  region      = "australia-southeast1"
}

#setting up aws provider
provider "aws" {
  region = "australia-southeast1"
}

#setting up azure provider
provider "azurerm" {
  subscription_id = "0"
  client_id       = "1"
  client_secret   = "2"
  tenant_id       = "3"
}

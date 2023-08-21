# Configure the HuaweiCloud Provider
provider "huaweicloud" {
  region = "cn-north-4"
  access_key = "AYC7XMLT6UMNBABA03S3"
  secret_key = "ic249AA7uepl5hG4yrGp0q4W7dvckbDdYhREx8k1"

  assume_role{
    agency_name = "test_tansj"
    domain_name = "hwid_7q8xoc99e68r3r1"
  }
}
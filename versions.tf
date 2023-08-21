terraform {
  required_providers {
    huaweicloud = {
      source  = "huawei.com/provider/huaweicloud"
      version = ">= 1.37.0"
    }
  }
}

#terraform {
#  required_version = ">= 0.13"
#
#  required_providers {
#    huaweicloud = {
#      source  = "local-registry/huaweicloud/huaweicloud"
#      version = "= 1.54.0"
#    }
#  }
}

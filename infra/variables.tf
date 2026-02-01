variable "default_region" {
  description = "Default AWS region for resources"
  type = string
  default = "us-east-1"
}

variable "bucket_name" {
  description = "Specifies the bucket name"
  type = string
  default = "dataminerBucket"
}

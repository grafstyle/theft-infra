variable "project_id" {
  description = "Google Cloud Project ID"
  default = "rosy-acolyte-412215"
}

variable "region" {
  description = "Google Cloud Region"
  default     = "us-central1"
}

variable "zone" {
  description = "Google Cloud Zone"
  default     = "us-central1-a"
}

# variable "repo_name" {
#   description = "Repository of fitquest"
#   default     = "https://github.com/perodriguez1630/DevOps-CI-CD.git"
# }

variable "name" {
    type = string
    default = "FItquest"
  
}

variable "BRANCH_NAME" {
  type = string
  default = "main"
  
}

variable "credentials" {
  type = string
  default ="rosy-acolyte-412215-15449e5d0d54.json"
  
}
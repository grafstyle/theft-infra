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

variable "repo_name" {
  description = "Repository of fitquest"
  default     = "https://github.com/pRodriguez1630/terraform-infra-test.git"
}

variable "name" {
    type = string
    default = "Fitquest"
  
}

variable "BRANCH_NAME" {
  type = string
  default = "main"
  
}

# Define una variable para almacenar el contenido del archivo JSON

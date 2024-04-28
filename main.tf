# Provider de Google Cloud Platform
provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
# resource "google_artifact_registry_repository" "example" {
#   repository_id = "mi-repositorio-v2"
#   location      = var.zone  # Cambia la ubicación según tu preferencia

#   format = "DOCKER"  # Este ejemplo crea un repositorio de tipo Docker, pero también puedes usar otros formatos como MAVEN o NPM
# }


# Crear un bucket de Cloud Storage
resource "google_storage_bucket" "mi_bucket" {
  name          = "mi-bucket-de-logs"
  location      = var.region  # Cambia esto a tu región preferida
  force_destroy = true           # Esto eliminará permanentemente el bucket cuando sea eliminado de Terraform
}
resource "google_storage_bucket" "mi_bucket-v" {
  name          = "mi-bucket-de-logs-v"
  location      = var.region  # Cambia esto a tu región preferida
  force_destroy = true           # Esto eliminará permanentemente el bucket cuando sea eliminado de Terraform
}
# resource "google_storage_bucket" "mi_bucket-v2" {
#   name          = "mi-bucket-de-logs-v"
#   location      = var.region  # Cambia esto a tu región preferida
#   force_destroy = true           # Esto eliminará permanentemente el bucket cuando sea eliminado de Terraform
# }

# Crear un trigger de Cloud Build y utilizar el bucket creado anteriormente
# resource "google_cloudbuild_trigger" "mi_trigger" {
#   trigger_template {
#     branch_name = "main"
#     repo_name   = "pRodriguez1630/terraform-infra-test"
#   }
  

#   filename = "cloudbuild.yaml"

  
# }
# Creación de la cuenta de servicio
#resource "google_service_account" "my_service_account" {
#  account_id   = "terraform-fitquesd-service"
#  display_name = "terraform-service-account"
#}

#resource "google_project_iam_member" "service_account_member" {
#  project = var.project_id
#  role    = "roles/owner"  # Cambia esto al rol que desees asignar
#  member  = "serviceAccount:vibrant-mantis-392013@appspot.gserviceaccount.com"
#}
# # Configuración del presupuesto
# resource "google_billing_budget" "my_budget" {
    
#   display_name = "my_Budget"
#   billing_account = "My Billing Account"
  

#   budget_filter {
#     projects = [ "projects/${var.project_id}" ]
#   }

#   amount {
#     specified_amount {
#       currency_code = "USD"
#       units = "5"
#     }
#   }
#   threshold_rules {
#     threshold_percent = 0.7
#   }

#   threshold_rules {
#     threshold_percent = 1.0
#     spend_basis       = "FORECASTED_SPEND"
#   }


#   all_updates_rule {
#     monitoring_notification_channels = [
#       google_monitoring_notification_channel.fitquest_chanel_notification,
#     ]
#     disable_default_iam_recipients = true

#   }

# }

# resource "google_monitoring_notification_channel" "fitquest_chanel_notification" {
#   display_name = "fitquest_chanel_notification"
#   type         = "email"

#   labels = {
#     email_address = "prodriguez1630@gmail.com"
#   }
# }


# Configuración de la alerta de presupuesto
# resource "google_billing_budget_alert" "my_budget_alert" {
#   budget_id = google_billing_budget.my_budget.id
#   threshold_rules {
#     threshold_percent = 0.7
#     spend_basis       = "CURRENT_SPEND"
#   }
# }

# Configuración del trigger de Cloud Build
# resource "google_cloudbuild_trigger" "my-fitquest-trigger" {
#   name        = "my-fitquest-trigger"
#   description = "My Cloud Build Trigger to fitquest"
#   trigger_template {
#     project_id  = var.project_id
#     repo_name   = "perodriguez1630/DevOps-CI"
#     branch_name = "main"
#   }

#   filename = "cloudbuild.yaml"

# }
#   build {

#     step {
#       name = "gcr.io/cloud-builders/git"
#       args = [ "git", "clone", "${var.repo_name}" ]
#     }

#     step {
#       name = "gcr.io/cloud-builders/docker"
#       args = [ "build", "-t", "gcr.io/${var.project_id}/fitquest-app", "." ]
#     }

#     step {
#       name = "gcr.io/cloud-builders/docker"
#       args = [ "push", "gcr.io/${var.project_id}/fitquest-app" ]
#     }

#     images = [ "gcr.io/${var.project_id}/fitquest-app" ]
#   }
 
# }

# # Configuración del despliegue en Cloud Run
# resource "google_cloud_run_service" "my_cloud_run_service" {
#   name     = "my-cloud-run-service"
#   location = var.region
#   template {
#     spec {
#       containers {
#         image = "gcr.io/${var.project_id}/fitquest-app"
#         name = "fitquest"
#       }
#     }
#   }

#   traffic {
#     percent = 100
#     latest_revision = true
#   }
 



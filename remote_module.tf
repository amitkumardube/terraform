module "gcloud" {
  source  = "terraform-google-modules/gcloud/google"
  version = "2.0.3"
  create_cmd_entrypoint  = "gcloud"
  create_cmd_body        = "compute instances list"
  destroy_cmd_entrypoint = "gcloud"
  destroy_cmd_body       = "version"  
}

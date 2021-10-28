variable "cloud_function_name" {
  description = "Name of the Cloud Function"
  type        = string
}

variable "cloud_function_description" {
  description = "Description of the Cloud Function"
  type        = string
}

variable "project" {
  description = "Google Cloud project"
  type        = string
}

variable "environment_variables" {
  description = "Environment variables of the Cloud Function runtime"
  default     = {}
  type        = map(string)
}

variable "entry_point" {
  description = "Entry point of the Cloud Function"
  type        = string
}

variable "labels" {
  description = "Labels to attach to objects"
  default     = {}
  type        = map(string)
}

variable "artifact_storage_bucket_name" {
  description = "Name of the bucket for string a build artifact"
  type        = string
  default     = "amh-cloud-function-artifacts"
}

variable "artifact_storage_folder" {
  description = "Name of the folder in the bucket (defaults to cloud_function_name)"
  type        = string
  default     = null
}

variable "artifact_version" {
  description = "Version of artifact (recommended to use short git commit), used as folder name to store artifact. Must be 7 to 8 chars long."
  type        = string
}

variable "bucket_build_filename" {
  description = "Name of the file in the bucket."
  type        = string
  default     = "artifact.zip"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account_iam#member/members
variable "iam_members" {
  description = "Name of the file in the bucket."
  type        = list(string)
  default     = ["allUsers"]
}

variable "trigger_http" {
  description = "Http request to the endpoint"
  type        = bool
  default     = true
}

variable "event_type" {
  description = "Type of the event i.e. PubSub"
  type        = string
  default     = ""
}

variable  "resource" {
  description = "Name or partial URI of the resource from which to observe events"
  type        = string
  default     = ""
}

resource "google_cloudfunctions_function" "function" {
  name        = var.cloud_function_name
  description = var.cloud_function_description
  runtime     = var.runtime

  available_memory_mb   = local.runtime_configuration.available_memory_mb
  source_archive_bucket = var.artifact_storage_bucket_name
  source_archive_object = data.google_storage_bucket_object.archive.name
  trigger_http          = var.trigger_http
  timeout               = local.runtime_configuration.timeout
  entry_point           = var.entry_point
  labels                = var.labels
  environment_variables = var.environment_variables

  dynamic "event_trigger" {
    for_each = var.trigger_http ? [] : [true]
    content {
      event_type  = var.event_type
      resource    = var.resource
    }
  }
}

data "google_storage_bucket_object" "archive" {
  name   = join("/", [(var.artifact_storage_folder != null ? var.artifact_storage_folder : var.cloud_function_name), var.artifact_version, var.bucket_build_filename])
  bucket = var.artifact_storage_bucket_name
}

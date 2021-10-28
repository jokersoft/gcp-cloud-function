output "id" {
  value = google_cloudfunctions_function.function.id
}

output "url" {
  value = google_cloudfunctions_function.function.https_trigger_url
}

output "version" {
  value = var.artifact_version
}

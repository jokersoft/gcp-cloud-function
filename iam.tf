resource "google_cloudfunctions_function_iam_member" "invoker" {
  for_each = toset(var.iam_members)
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = each.value
}

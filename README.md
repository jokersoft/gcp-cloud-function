<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 3.79.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloudfunctions_function.function](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function) | resource |
| [google_cloudfunctions_function_iam_member.invoker](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function_iam_member) | resource |
| [google_storage_bucket_object.archive](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/storage_bucket_object) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_artifact_storage_bucket_name"></a> [artifact\_storage\_bucket\_name](#input\_artifact\_storage\_bucket\_name) | Name of the bucket for string a build artifact | `string` | `"amh-cloud-function-artifacts"` | no |
| <a name="input_artifact_storage_folder"></a> [artifact\_storage\_folder](#input\_artifact\_storage\_folder) | Name of the folder in the bucket (defaults to cloud\_function\_name) | `string` | `null` | no |
| <a name="input_artifact_version"></a> [artifact\_version](#input\_artifact\_version) | Version of artifact (recommended to use short git commit), used as folder name to store artifact. Must be 7 to 8 chars long. | `string` | n/a | yes |
| <a name="input_bucket_build_filename"></a> [bucket\_build\_filename](#input\_bucket\_build\_filename) | Name of the file in the bucket. | `string` | `"artifact.zip"` | no |
| <a name="input_cloud_function_description"></a> [cloud\_function\_description](#input\_cloud\_function\_description) | Description of the Cloud Function | `string` | n/a | yes |
| <a name="input_cloud_function_name"></a> [cloud\_function\_name](#input\_cloud\_function\_name) | Name of the Cloud Function | `string` | n/a | yes |
| <a name="input_entry_point"></a> [entry\_point](#input\_entry\_point) | Entry point of the Cloud Function | `string` | n/a | yes |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | Environment variables of the Cloud Function runtime | `map(string)` | `{}` | no |
| <a name="input_event_type"></a> [event\_type](#input\_event\_type) | Type of the event i.e. PubSub | `string` | `""` | no |
| <a name="input_iam_members"></a> [iam\_members](#input\_iam\_members) | Name of the file in the bucket. | `list(string)` | <pre>[<br>  "allUsers"<br>]</pre> | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to attach to objects | `map(string)` | `{}` | no |
| <a name="input_project"></a> [project](#input\_project) | Google Cloud project | `string` | n/a | yes |
| <a name="input_resource"></a> [resource](#input\_resource) | Name or partial URI of the resource from which to observe events | `string` | `""` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | Runtime template of a Function. Currently supported: php74 and python38 | `string` | `"php74"` | no |
| <a name="input_runtime_map"></a> [runtime\_map](#input\_runtime\_map) | Officially supported runtimes: https://cloud.google.com/functions/docs/concepts/exec#runtimes | <pre>map(object({<br>    available_memory_mb = number<br>    timeout = number<br>  }))</pre> | <pre>{<br>  "php74": {<br>    "available_memory_mb": 128,<br>    "timeout": 60<br>  },<br>  "python38": {<br>    "available_memory_mb": 128,<br>    "timeout": 60<br>  }<br>}</pre> | no |
| <a name="input_trigger_http"></a> [trigger\_http](#input\_trigger\_http) | Http request to the endpoint | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_url"></a> [url](#output\_url) | n/a |
| <a name="output_version"></a> [version](#output\_version) | n/a |
<!-- END_TF_DOCS -->

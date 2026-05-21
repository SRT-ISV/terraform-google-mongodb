/**
 * Copyright 2026 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "cluster_id" {
  value = mongodbatlas_cluster.cluster.cluster_id
}

output "username" {
  value = mongodbatlas_database_user.database_user.username
}

output "user_password" {
  sensitive = true
  value     = mongodbatlas_database_user.database_user.password
}


output "atlas_cluster_connection_string" {
  value = mongodbatlas_cluster.cluster.connection_strings[0].standard_srv
}


output "mongodb_connection_string" {
  sensitive = true
  value = replace(
    mongodbatlas_cluster.cluster.connection_strings[0].standard_srv,
    "mongodb+srv://",
    "mongodb+srv://${mongodbatlas_database_user.database_user.username}:${urlencode(mongodbatlas_database_user.database_user.password)}@"
  )
}
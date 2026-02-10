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

module "mongo_db" {

 source = "./modules"
 atlas_project_name = var.atlas_project_name
 suffix = var.suffix
 atlas_org_id = var.atlas_org_id
 cluster_name = var.cluster_name
 instance_size = var.instance_size
 atlas_region = var.atlas_region
 mongo_db_major_version = var.mongo_db_major_version
 user_invite_list = var.user_invite_list
 database_user = var.database_user
 network_whitelist = var.network_whitelist


}
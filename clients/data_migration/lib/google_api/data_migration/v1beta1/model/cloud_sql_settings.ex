# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.DataMigration.V1beta1.Model.CloudSqlSettings do
  @moduledoc """
  Settings for creating a Cloud SQL database instance.

  ## Attributes

  *   `activationPolicy` (*type:* `String.t`, *default:* `nil`) - The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  *   `autoStorageIncrease` (*type:* `boolean()`, *default:* `nil`) - [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  *   `dataDiskSizeGb` (*type:* `String.t`, *default:* `nil`) - The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  *   `dataDiskType` (*type:* `String.t`, *default:* `nil`) - The type of storage: `PD_SSD` (default) or `PD_HDD`.
  *   `databaseFlags` (*type:* `map()`, *default:* `nil`) - The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  *   `databaseVersion` (*type:* `String.t`, *default:* `nil`) - The database engine type and version.
  *   `ipConfig` (*type:* `GoogleApi.DataMigration.V1beta1.Model.SqlIpConfig.t`, *default:* `nil`) - The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  *   `rootPassword` (*type:* `String.t`, *default:* `nil`) - Input only. Initial root password.
  *   `rootPasswordSet` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates If this connection profile root password is stored.
  *   `sourceId` (*type:* `String.t`, *default:* `nil`) - The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  *   `storageAutoResizeLimit` (*type:* `String.t`, *default:* `nil`) - The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  *   `tier` (*type:* `String.t`, *default:* `nil`) - The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Platform zone where your Cloud SQL datdabse instance is located.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activationPolicy => String.t() | nil,
          :autoStorageIncrease => boolean() | nil,
          :dataDiskSizeGb => String.t() | nil,
          :dataDiskType => String.t() | nil,
          :databaseFlags => map() | nil,
          :databaseVersion => String.t() | nil,
          :ipConfig => GoogleApi.DataMigration.V1beta1.Model.SqlIpConfig.t() | nil,
          :rootPassword => String.t() | nil,
          :rootPasswordSet => boolean() | nil,
          :sourceId => String.t() | nil,
          :storageAutoResizeLimit => String.t() | nil,
          :tier => String.t() | nil,
          :userLabels => map() | nil,
          :zone => String.t() | nil
        }

  field(:activationPolicy)
  field(:autoStorageIncrease)
  field(:dataDiskSizeGb)
  field(:dataDiskType)
  field(:databaseFlags, type: :map)
  field(:databaseVersion)
  field(:ipConfig, as: GoogleApi.DataMigration.V1beta1.Model.SqlIpConfig)
  field(:rootPassword)
  field(:rootPasswordSet)
  field(:sourceId)
  field(:storageAutoResizeLimit)
  field(:tier)
  field(:userLabels, type: :map)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1beta1.Model.CloudSqlSettings do
  def decode(value, options) do
    GoogleApi.DataMigration.V1beta1.Model.CloudSqlSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1beta1.Model.CloudSqlSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.DataMigration.V1beta1.Model.MigrationJob do
  @moduledoc """
  Represents a Database Migration Service migration job object.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the migration job resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  *   `destination` (*type:* `String.t`, *default:* `nil`) - Required. The resource name (URI) of the destination connection profile.
  *   `destinationDatabase` (*type:* `GoogleApi.DataMigration.V1beta1.Model.DatabaseType.t`, *default:* `nil`) - The database engine type and provider of the destination.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The migration job display name.
  *   `dumpPath` (*type:* `String.t`, *default:* `nil`) - The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  *   `duration` (*type:* `String.t`, *default:* `nil`) - Output only. The duration of the migration job (in seconds). A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. If the migration job is completed, the time when it was completed.
  *   `error` (*type:* `GoogleApi.DataMigration.V1beta1.Model.Status.t`, *default:* `nil`) - Output only. The error details in case of state FAILED.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/instances/{instance}.
  *   `phase` (*type:* `String.t`, *default:* `nil`) - Output only. The current migration job phase.
  *   `reverseSshConnectivity` (*type:* `GoogleApi.DataMigration.V1beta1.Model.ReverseSshConnectivity.t`, *default:* `nil`) - The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  *   `source` (*type:* `String.t`, *default:* `nil`) - Required. The resource name (URI) of the source connection profile.
  *   `sourceDatabase` (*type:* `GoogleApi.DataMigration.V1beta1.Model.DatabaseType.t`, *default:* `nil`) - The database engine type and provider of the source.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The current migration job state.
  *   `staticIpConnectivity` (*type:* `GoogleApi.DataMigration.V1beta1.Model.StaticIpConnectivity.t`, *default:* `nil`) - static ip connectivity data (default, no additional details needed).
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The migration job type.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the migration job resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  *   `vpcPeeringConnectivity` (*type:* `GoogleApi.DataMigration.V1beta1.Model.VpcPeeringConnectivity.t`, *default:* `nil`) - The details of the VPC network that the source database is located in.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :destination => String.t(),
          :destinationDatabase => GoogleApi.DataMigration.V1beta1.Model.DatabaseType.t(),
          :displayName => String.t(),
          :dumpPath => String.t(),
          :duration => String.t(),
          :endTime => DateTime.t(),
          :error => GoogleApi.DataMigration.V1beta1.Model.Status.t(),
          :labels => map(),
          :name => String.t(),
          :phase => String.t(),
          :reverseSshConnectivity =>
            GoogleApi.DataMigration.V1beta1.Model.ReverseSshConnectivity.t(),
          :source => String.t(),
          :sourceDatabase => GoogleApi.DataMigration.V1beta1.Model.DatabaseType.t(),
          :state => String.t(),
          :staticIpConnectivity => GoogleApi.DataMigration.V1beta1.Model.StaticIpConnectivity.t(),
          :type => String.t(),
          :updateTime => DateTime.t(),
          :vpcPeeringConnectivity =>
            GoogleApi.DataMigration.V1beta1.Model.VpcPeeringConnectivity.t()
        }

  field(:createTime, as: DateTime)
  field(:destination)
  field(:destinationDatabase, as: GoogleApi.DataMigration.V1beta1.Model.DatabaseType)
  field(:displayName)
  field(:dumpPath)
  field(:duration)
  field(:endTime, as: DateTime)
  field(:error, as: GoogleApi.DataMigration.V1beta1.Model.Status)
  field(:labels, type: :map)
  field(:name)
  field(:phase)
  field(:reverseSshConnectivity, as: GoogleApi.DataMigration.V1beta1.Model.ReverseSshConnectivity)
  field(:source)
  field(:sourceDatabase, as: GoogleApi.DataMigration.V1beta1.Model.DatabaseType)
  field(:state)
  field(:staticIpConnectivity, as: GoogleApi.DataMigration.V1beta1.Model.StaticIpConnectivity)
  field(:type)
  field(:updateTime, as: DateTime)
  field(:vpcPeeringConnectivity, as: GoogleApi.DataMigration.V1beta1.Model.VpcPeeringConnectivity)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1beta1.Model.MigrationJob do
  def decode(value, options) do
    GoogleApi.DataMigration.V1beta1.Model.MigrationJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1beta1.Model.MigrationJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
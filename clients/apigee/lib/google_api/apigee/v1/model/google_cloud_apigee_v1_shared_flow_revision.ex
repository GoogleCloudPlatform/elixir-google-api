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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SharedFlowRevision do
  @moduledoc """
  The metadata describing a shared flow revision.

  ## Attributes

  *   `configurationVersion` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ConfigVersion.t`, *default:* `nil`) - The version of the configuration schema to which this shared flow conforms.
      The only supported value currently is majorVersion 4 and minorVersion 0.
      This setting may be used in the future to enable evolution of the shared
      flow format.
  *   `contextInfo` (*type:* `String.t`, *default:* `nil`) - A textual description of the shared flow revision.
  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - Time at which this shared flow revision was created, in milliseconds since
      epoch.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the shared flow revision.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The human readable name of this shared flow.
  *   `entityMetaDataAsProperties` (*type:* `map()`, *default:* `nil`) - A Key-Value map of metadata about this shared flow revision.
  *   `lastModifiedAt` (*type:* `String.t`, *default:* `nil`) - Time at which this shared flow revision was most recently modified, in
      milliseconds since epoch.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource ID of the parent shared flow.
  *   `policies` (*type:* `list(String.t)`, *default:* `nil`) - A list of policy names included in this shared flow revision.
  *   `resourceFiles` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ResourceFiles.t`, *default:* `nil`) - The resource files included in this shared flow revision.
  *   `resources` (*type:* `list(String.t)`, *default:* `nil`) - A list of the resources included in this shared flow revision formatted as
      "{type}://{name}".
  *   `revision` (*type:* `String.t`, *default:* `nil`) - The resource ID of this revision.
  *   `sharedFlows` (*type:* `list(String.t)`, *default:* `nil`) - A list of the shared flow names included in this shared flow revision.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The string "Application"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configurationVersion => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ConfigVersion.t(),
          :contextInfo => String.t(),
          :createdAt => String.t(),
          :description => String.t(),
          :displayName => String.t(),
          :entityMetaDataAsProperties => map(),
          :lastModifiedAt => String.t(),
          :name => String.t(),
          :policies => list(String.t()),
          :resourceFiles => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ResourceFiles.t(),
          :resources => list(String.t()),
          :revision => String.t(),
          :sharedFlows => list(String.t()),
          :type => String.t()
        }

  field(:configurationVersion, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ConfigVersion)
  field(:contextInfo)
  field(:createdAt)
  field(:description)
  field(:displayName)
  field(:entityMetaDataAsProperties, type: :map)
  field(:lastModifiedAt)
  field(:name)
  field(:policies, type: :list)
  field(:resourceFiles, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ResourceFiles)
  field(:resources, type: :list)
  field(:revision)
  field(:sharedFlows, type: :list)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SharedFlowRevision do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SharedFlowRevision.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SharedFlowRevision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

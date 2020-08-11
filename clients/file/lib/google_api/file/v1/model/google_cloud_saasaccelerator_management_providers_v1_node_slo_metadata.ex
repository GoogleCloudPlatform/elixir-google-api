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

defmodule GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata do
  @moduledoc """
  Node information for custom per-node SLO implementations. SSA does not support per-node SLO, but producers can populate per-node information in SloMetadata for custom precomputations. SSA Eligibility Exporter will emit per-node metric based on this information.

  ## Attributes

  *   `exclusions` (*type:* `list(GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion.t)`, *default:* `nil`) - By default node is eligible if instance is eligible. But individual node might be excluded from SLO by adding entry here. For semantic see SloMetadata.exclusions. If both instance and node level exclusions are present for time period, the node level's reason will be reported by Eligibility Exporter.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The location of the node, if different from instance location.
  *   `nodeId` (*type:* `String.t`, *default:* `nil`) - The id of the node. This should be equal to SaasInstanceNode.node_id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exclusions =>
            list(
              GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion.t()
            ),
          :location => String.t(),
          :nodeId => String.t()
        }

  field(:exclusions,
    as: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion,
    type: :list
  )

  field(:location)
  field(:nodeId)
end

defimpl Poison.Decoder,
  for: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata do
  def decode(value, options) do
    GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

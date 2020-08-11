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

defmodule GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata do
  @moduledoc """
  SloMetadata contains resources required for proper SLO classification of the instance.

  ## Attributes

  *   `eligibility` (*type:* `GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility.t`, *default:* `nil`) - Optional. User-defined instance eligibility.
  *   `exclusions` (*type:* `list(GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion.t)`, *default:* `nil`) - List of SLO exclusion windows. When multiple entries in the list match (matching the exclusion time-window against current time point) the exclusion reason used in the first matching entry will be published. It is not needed to include expired exclusion in this list, as only the currently applicable exclusions are taken into account by the eligibility exporting subsystem (the historical state of exclusions will be reflected in the historically produced timeseries regardless of the current state). This field can be used to mark the instance as temporary ineligible for the purpose of SLO calculation. For permanent instance SLO exclusion, use of custom instance eligibility is recommended. See 'eligibility' field below.
  *   `nodes` (*type:* `list(GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata.t)`, *default:* `nil`) - Optional. List of nodes. Some producers need to use per-node metadata to calculate SLO. This field allows such producers to publish per-node SLO meta data, which will be consumed by SSA Eligibility Exporter and published in the form of per node metric to Monarch.
  *   `tier` (*type:* `String.t`, *default:* `nil`) - Name of the SLO tier the Instance belongs to. This name will be expected to match the tiers specified in the service SLO configuration. Field is mandatory and must not be empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eligibility =>
            GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility.t(),
          :exclusions =>
            list(
              GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion.t()
            ),
          :nodes =>
            list(
              GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata.t()
            ),
          :tier => String.t()
        }

  field(:eligibility,
    as: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
  )

  field(:exclusions,
    as: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion,
    type: :list
  )

  field(:nodes,
    as: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata,
    type: :list
  )

  field(:tier)
end

defimpl Poison.Decoder,
  for: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata do
  def decode(value, options) do
    GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

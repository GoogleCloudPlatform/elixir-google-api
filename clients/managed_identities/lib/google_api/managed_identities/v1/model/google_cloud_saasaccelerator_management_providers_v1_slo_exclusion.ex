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

defmodule GoogleApi.ManagedIdentities.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion do
  @moduledoc """
  SloExclusion represents an exclusion in SLI calculation applies to all SLOs.

  ## Attributes

  *   `duration` (*type:* `String.t`, *default:* `nil`) - Exclusion duration. No restrictions on the possible values.

      When an ongoing operation is taking longer than initially expected,
      an existing entry in the exclusion list can be updated by extending the
      duration. This is supported by the subsystem exporting eligibility data
      as long as such extension is committed at least 10 minutes before the
      original exclusion expiration - otherwise it is possible that there will
      be "gaps" in the exclusion application in the exported timeseries.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - Human-readable reason for the exclusion.
      This should be a static string (e.g. "Disruptive update in progress")
      and should not contain dynamically generated data (e.g. instance name).
      Can be left empty.
  *   `sliName` (*type:* `String.t`, *default:* `nil`) - Name of an SLI that this exclusion applies to. Can be left empty,
      signaling that the instance should be excluded from all SLIs defined
      in the service SLO configuration.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Start time of the exclusion. No alignment (e.g. to a full minute) needed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :duration => String.t(),
          :reason => String.t(),
          :sliName => String.t(),
          :startTime => DateTime.t()
        }

  field(:duration)
  field(:reason)
  field(:sliName)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ManagedIdentities.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion do
  def decode(value, options) do
    GoogleApi.ManagedIdentities.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ManagedIdentities.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

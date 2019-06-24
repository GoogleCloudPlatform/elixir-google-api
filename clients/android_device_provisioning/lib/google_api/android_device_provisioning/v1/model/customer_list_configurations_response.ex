# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListConfigurationsResponse do
  @moduledoc """
  Response message of customer's listing configuration.

  ## Attributes

  *   `configurations` (*type:* `list(GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration.t)`, *default:* `nil`) - The configurations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configurations => list(GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration.t())
        }

  field(
    :configurations,
    as: GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListConfigurationsResponse do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListConfigurationsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListConfigurationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

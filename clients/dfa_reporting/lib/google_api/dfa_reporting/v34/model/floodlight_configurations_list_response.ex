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

defmodule GoogleApi.DFAReporting.V34.Model.FloodlightConfigurationsListResponse do
  @moduledoc """
  Floodlight Configuration List Response

  ## Attributes

  *   `floodlightConfigurations` (*type:* `list(GoogleApi.DFAReporting.V34.Model.FloodlightConfiguration.t)`, *default:* `nil`) - Floodlight configuration collection.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#floodlightConfigurationsListResponse`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#floodlightConfigurationsListResponse".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :floodlightConfigurations =>
            list(GoogleApi.DFAReporting.V34.Model.FloodlightConfiguration.t()),
          :kind => String.t()
        }

  field(:floodlightConfigurations,
    as: GoogleApi.DFAReporting.V34.Model.FloodlightConfiguration,
    type: :list
  )

  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.FloodlightConfigurationsListResponse do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.FloodlightConfigurationsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.FloodlightConfigurationsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

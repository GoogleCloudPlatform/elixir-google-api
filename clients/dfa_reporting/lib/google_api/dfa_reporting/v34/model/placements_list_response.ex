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

defmodule GoogleApi.DFAReporting.V34.Model.PlacementsListResponse do
  @moduledoc """
  Placement List Response

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `dfareporting#placementsListResponse`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#placementsListResponse".
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Pagination token to be used for the next list operation.
  *   `placements` (*type:* `list(GoogleApi.DFAReporting.V34.Model.Placement.t)`, *default:* `nil`) - Placement collection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :nextPageToken => String.t(),
          :placements => list(GoogleApi.DFAReporting.V34.Model.Placement.t())
        }

  field(:kind)
  field(:nextPageToken)
  field(:placements, as: GoogleApi.DFAReporting.V34.Model.Placement, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.PlacementsListResponse do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.PlacementsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.PlacementsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.DoubleClickSearch.V2.Model.Availability do
  @moduledoc """
  A message containing availability data relevant to DoubleClick Search.

  ## Attributes

  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - DS advertiser ID.
  *   `agencyId` (*type:* `String.t`, *default:* `nil`) - DS agency ID.
  *   `availabilityTimestamp` (*type:* `String.t`, *default:* `nil`) - The time by which all conversions have been uploaded, in epoch millis UTC.
  *   `segmentationId` (*type:* `String.t`, *default:* `nil`) - The numeric segmentation identifier (for example, DoubleClick Search Floodlight activity ID).
  *   `segmentationName` (*type:* `String.t`, *default:* `nil`) - The friendly segmentation identifier (for example, DoubleClick Search Floodlight activity name).
  *   `segmentationType` (*type:* `String.t`, *default:* `nil`) - The segmentation type that this availability is for (its default value is `FLOODLIGHT`).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserId => String.t() | nil,
          :agencyId => String.t() | nil,
          :availabilityTimestamp => String.t() | nil,
          :segmentationId => String.t() | nil,
          :segmentationName => String.t() | nil,
          :segmentationType => String.t() | nil
        }

  field(:advertiserId)
  field(:agencyId)
  field(:availabilityTimestamp)
  field(:segmentationId)
  field(:segmentationName)
  field(:segmentationType)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.Availability do
  def decode(value, options) do
    GoogleApi.DoubleClickSearch.V2.Model.Availability.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickSearch.V2.Model.Availability do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

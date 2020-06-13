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

defmodule GoogleApi.DisplayVideo.V1.Model.TrackingFloodlightActivityConfig do
  @moduledoc """
  Settings that control the behavior of a single Floodlight activity config.

  ## Attributes

  *   `floodlightActivityId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the Floodlight activity.
  *   `postClickLookbackWindowDays` (*type:* `integer()`, *default:* `nil`) - Required. The number of days after an ad has been clicked in which a
      conversion may be counted.
      Must be between 0 and 90 inclusive.
  *   `postViewLookbackWindowDays` (*type:* `integer()`, *default:* `nil`) - Required. The number of days after an ad has been viewed in which a
      conversion may be counted.
      Must be between 0 and 90 inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :floodlightActivityId => String.t(),
          :postClickLookbackWindowDays => integer(),
          :postViewLookbackWindowDays => integer()
        }

  field(:floodlightActivityId)
  field(:postClickLookbackWindowDays)
  field(:postViewLookbackWindowDays)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.TrackingFloodlightActivityConfig do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.TrackingFloodlightActivityConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.TrackingFloodlightActivityConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

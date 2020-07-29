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

defmodule GoogleApi.DisplayVideo.V1.Model.CustomBiddingAlgorithm do
  @moduledoc """
  A single custom bidding algorithm.

  ## Attributes

  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Immutable. The unique ID of the advertiser that owns the custom bidding algorithm.
  *   `customBiddingAlgorithmId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the custom bidding algorithm. Assigned by the system.
  *   `customBiddingAlgorithmType` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The type of custom bidding algorithm.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the custom bidding algorithm. Must be UTF-8 encoded with a maximum size of 240 bytes.
  *   `entityStatus` (*type:* `String.t`, *default:* `nil`) - Controls whether or not the custom bidding algorithm can be used as a bidding strategy. Accepted values are: * `ENTITY_STATUS_ACTIVE` * `ENTITY_STATUS_ARCHIVED`
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the custom bidding algorithm.
  *   `partnerId` (*type:* `String.t`, *default:* `nil`) - Immutable. The unique ID of the partner that owns the custom bidding algorithm.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserId => String.t(),
          :customBiddingAlgorithmId => String.t(),
          :customBiddingAlgorithmType => String.t(),
          :displayName => String.t(),
          :entityStatus => String.t(),
          :name => String.t(),
          :partnerId => String.t()
        }

  field(:advertiserId)
  field(:customBiddingAlgorithmId)
  field(:customBiddingAlgorithmType)
  field(:displayName)
  field(:entityStatus)
  field(:name)
  field(:partnerId)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.CustomBiddingAlgorithm do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.CustomBiddingAlgorithm.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.CustomBiddingAlgorithm do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

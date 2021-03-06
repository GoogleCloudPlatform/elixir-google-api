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

defmodule GoogleApi.RealTimeBidding.V1.Model.AdvertiserAndBrand do
  @moduledoc """
  Detected advertiser and brand information.

  ## Attributes

  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - See https://storage.googleapis.com/adx-rtb-dictionaries/advertisers.txt for the list of possible values. Can be used to filter the response of the creatives.list method.
  *   `advertiserName` (*type:* `String.t`, *default:* `nil`) - Advertiser name. Can be used to filter the response of the creatives.list method.
  *   `brandId` (*type:* `String.t`, *default:* `nil`) - Detected brand ID or zero if no brand has been detected. See https://storage.googleapis.com/adx-rtb-dictionaries/brands.txt for the list of possible values. Can be used to filter the response of the creatives.list method.
  *   `brandName` (*type:* `String.t`, *default:* `nil`) - Brand name. Can be used to filter the response of the creatives.list method.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserId => String.t() | nil,
          :advertiserName => String.t() | nil,
          :brandId => String.t() | nil,
          :brandName => String.t() | nil
        }

  field(:advertiserId)
  field(:advertiserName)
  field(:brandId)
  field(:brandName)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.AdvertiserAndBrand do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.AdvertiserAndBrand.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.AdvertiserAndBrand do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

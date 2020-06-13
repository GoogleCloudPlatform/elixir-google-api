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

defmodule GoogleApi.Content.V21.Model.CarrierRate do
  @moduledoc """


  ## Attributes

  *   `carrierName` (*type:* `String.t`, *default:* `nil`) - Carrier service, such as `"UPS"` or `"Fedex"`. The list of supported carriers can be retrieved via the `getSupportedCarriers` method. Required.
  *   `carrierService` (*type:* `String.t`, *default:* `nil`) - Carrier service, such as `"ground"` or `"2 days"`. The list of supported services for a carrier can be retrieved via the `getSupportedCarriers` method. Required.
  *   `flatAdjustment` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - Additive shipping rate modifier. Can be negative. For example `{ "value": "1", "currency" : "USD" }` adds $1 to the rate, `{ "value": "-3", "currency" : "USD" }` removes $3 from the rate. Optional.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the carrier rate. Must be unique per rate group. Required.
  *   `originPostalCode` (*type:* `String.t`, *default:* `nil`) - Shipping origin for this carrier rate. Required.
  *   `percentageAdjustment` (*type:* `String.t`, *default:* `nil`) - Multiplicative shipping rate modifier as a number in decimal notation. Can be negative. For example `"5.4"` increases the rate by 5.4%, `"-3"` decreases the rate by 3%. Optional.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrierName => String.t(),
          :carrierService => String.t(),
          :flatAdjustment => GoogleApi.Content.V21.Model.Price.t(),
          :name => String.t(),
          :originPostalCode => String.t(),
          :percentageAdjustment => String.t()
        }

  field(:carrierName)
  field(:carrierService)
  field(:flatAdjustment, as: GoogleApi.Content.V21.Model.Price)
  field(:name)
  field(:originPostalCode)
  field(:percentageAdjustment)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.CarrierRate do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.CarrierRate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.CarrierRate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

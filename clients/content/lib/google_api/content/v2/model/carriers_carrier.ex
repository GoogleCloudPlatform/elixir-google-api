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

defmodule GoogleApi.Content.V2.Model.CarriersCarrier do
  @moduledoc """


  ## Attributes

  *   `country` (*type:* `String.t`, *default:* `nil`) - The CLDR country code of the carrier (e.g., "US"). Always present.
  *   `eddServices` (*type:* `list(String.t)`, *default:* `nil`) - A list of services supported for EDD (Estimated Delivery Date) calculation. This is the list of valid values for WarehouseBasedDeliveryTime.carrierService.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the carrier (e.g., `"UPS"`). Always present.
  *   `services` (*type:* `list(String.t)`, *default:* `nil`) - A list of supported services (e.g., `"ground"`) for that carrier. Contains at least one service. This is the list of valid values for CarrierRate.carrierService.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :country => String.t() | nil,
          :eddServices => list(String.t()) | nil,
          :name => String.t() | nil,
          :services => list(String.t()) | nil
        }

  field(:country)
  field(:eddServices, type: :list)
  field(:name)
  field(:services, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.CarriersCarrier do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.CarriersCarrier.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.CarriersCarrier do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

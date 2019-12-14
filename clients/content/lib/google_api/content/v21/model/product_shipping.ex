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

defmodule GoogleApi.Content.V21.Model.ProductShipping do
  @moduledoc """


  ## Attributes

  *   `country` (*type:* `String.t`, *default:* `nil`) - The CLDR territory code of the country to which an item will ship.
  *   `locationGroupName` (*type:* `String.t`, *default:* `nil`) - The location where the shipping is applicable, represented by a location group name.
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - The numeric ID of a location that the shipping rate applies to as defined in the AdWords API.
  *   `postalCode` (*type:* `String.t`, *default:* `nil`) - The postal code range that the shipping rate applies to, represented by a postal code, a postal code prefix followed by a * wildcard, a range between two postal codes or two postal code prefixes of equal length.
  *   `price` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - Fixed shipping price, represented as a number.
  *   `region` (*type:* `String.t`, *default:* `nil`) - The geographic region to which a shipping rate applies.
  *   `service` (*type:* `String.t`, *default:* `nil`) - A free-form description of the service class or delivery speed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :country => String.t(),
          :locationGroupName => String.t(),
          :locationId => String.t(),
          :postalCode => String.t(),
          :price => GoogleApi.Content.V21.Model.Price.t(),
          :region => String.t(),
          :service => String.t()
        }

  field(:country)
  field(:locationGroupName)
  field(:locationId)
  field(:postalCode)
  field(:price, as: GoogleApi.Content.V21.Model.Price)
  field(:region)
  field(:service)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ProductShipping do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ProductShipping.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ProductShipping do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

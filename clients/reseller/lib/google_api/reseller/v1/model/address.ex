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

defmodule GoogleApi.Reseller.V1.Model.Address do
  @moduledoc """
  JSON template for address of a customer.

  ## Attributes

  *   `addressLine1` (*type:* `String.t`, *default:* `nil`) - A customer's physical address. An address can be composed of one to three lines. The addressline2 and addressLine3 are optional.
  *   `addressLine2` (*type:* `String.t`, *default:* `nil`) - Line 2 of the address.
  *   `addressLine3` (*type:* `String.t`, *default:* `nil`) - Line 3 of the address.
  *   `contactName` (*type:* `String.t`, *default:* `nil`) - The customer contact's name. This is required.
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - For countryCode information, see the ISO 3166 country code elements. Verify that country is approved for resale of Google products. This property is required when creating a new customer.
  *   `kind` (*type:* `String.t`, *default:* `customers#address`) - Identifies the resource as a customer address. Value: customers#address
  *   `locality` (*type:* `String.t`, *default:* `nil`) - An example of a locality value is the city of San Francisco.
  *   `organizationName` (*type:* `String.t`, *default:* `nil`) - The company or company division name. This is required.
  *   `postalCode` (*type:* `String.t`, *default:* `nil`) - A postalCode example is a postal zip code such as 94043. This property is required when creating a new customer.
  *   `region` (*type:* `String.t`, *default:* `nil`) - An example of a region value is CA for the state of California.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addressLine1 => String.t(),
          :addressLine2 => String.t(),
          :addressLine3 => String.t(),
          :contactName => String.t(),
          :countryCode => String.t(),
          :kind => String.t(),
          :locality => String.t(),
          :organizationName => String.t(),
          :postalCode => String.t(),
          :region => String.t()
        }

  field(:addressLine1)
  field(:addressLine2)
  field(:addressLine3)
  field(:contactName)
  field(:countryCode)
  field(:kind)
  field(:locality)
  field(:organizationName)
  field(:postalCode)
  field(:region)
end

defimpl Poison.Decoder, for: GoogleApi.Reseller.V1.Model.Address do
  def decode(value, options) do
    GoogleApi.Reseller.V1.Model.Address.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Reseller.V1.Model.Address do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

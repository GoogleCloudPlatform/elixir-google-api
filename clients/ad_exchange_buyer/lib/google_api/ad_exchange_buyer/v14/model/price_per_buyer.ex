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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.PricePerBuyer do
  @moduledoc """
  Used to specify pricing rules for buyers. Each PricePerBuyer in a product can become [0,1] deals. To check if there is a PricePerBuyer for a particular buyer we look for the most specific matching rule - we first look for a rule matching the buyer and otherwise look for a matching rule where no buyer is set.

  ## Attributes

  *   `auctionTier` (*type:* `String.t`, *default:* `nil`) - Optional access type for this buyer.
  *   `billedBuyer` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.Buyer.t`, *default:* `nil`) - Reference to the buyer that will get billed.
  *   `buyer` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.Buyer.t`, *default:* `nil`) - The buyer who will pay this price. If unset, all buyers can pay this price (if the advertisers match, and there's no more specific rule matching the buyer).
  *   `price` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.Price.t`, *default:* `nil`) - The specified price
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :auctionTier => String.t() | nil,
          :billedBuyer => GoogleApi.AdExchangeBuyer.V14.Model.Buyer.t() | nil,
          :buyer => GoogleApi.AdExchangeBuyer.V14.Model.Buyer.t() | nil,
          :price => GoogleApi.AdExchangeBuyer.V14.Model.Price.t() | nil
        }

  field(:auctionTier)
  field(:billedBuyer, as: GoogleApi.AdExchangeBuyer.V14.Model.Buyer)
  field(:buyer, as: GoogleApi.AdExchangeBuyer.V14.Model.Buyer)
  field(:price, as: GoogleApi.AdExchangeBuyer.V14.Model.Price)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.PricePerBuyer do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.PricePerBuyer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.PricePerBuyer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

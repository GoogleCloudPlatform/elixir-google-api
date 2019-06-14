# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.PricePerBuyer do
  @moduledoc """
  Used to specify pricing rules for buyers/advertisers. Each PricePerBuyer in
  a product can become 0 or 1 deals. To check if there is a PricePerBuyer for
  a particular buyer or buyer/advertiser pair, we look for the most specific
  matching rule - we first look for a rule matching the buyer and advertiser,
  next a rule with the buyer but an empty advertiser list, and otherwise look
  for a matching rule where no buyer is set.

  ## Attributes

  - advertiserIds (list(String.t)): The list of advertisers for this price when associated with this buyer.
  If empty, all advertisers with this buyer pay this price. Defaults to `nil`.
  - buyer (GoogleApi.AdExchangeBuyer.V2beta1.Model.Buyer.t): The buyer who will pay this price. If unset, all buyers can pay this price
  (if the
  advertisers match, and there's no more specific rule matching the buyer). Defaults to `nil`.
  - price (GoogleApi.AdExchangeBuyer.V2beta1.Model.Price.t): The specified price. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserIds => list(String.t()),
          :buyer => GoogleApi.AdExchangeBuyer.V2beta1.Model.Buyer.t(),
          :price => GoogleApi.AdExchangeBuyer.V2beta1.Model.Price.t()
        }

  field(:advertiserIds, type: :list)
  field(:buyer, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Buyer)
  field(:price, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Price)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.PricePerBuyer do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.PricePerBuyer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.PricePerBuyer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

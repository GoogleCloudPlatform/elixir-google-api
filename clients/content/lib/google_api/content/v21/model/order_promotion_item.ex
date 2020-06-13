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

defmodule GoogleApi.Content.V21.Model.OrderPromotionItem do
  @moduledoc """


  ## Attributes

  *   `lineItemId` (*type:* `String.t`, *default:* `nil`) - The line item ID of a product. Do not provide for `orders.createtestorder`.
  *   `offerId` (*type:* `String.t`, *default:* `nil`) - Required. Offer ID of a product. Only for `orders.createtestorder`.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - `orders.createtestorder`.
  *   `quantity` (*type:* `integer()`, *default:* `nil`) - The quantity of the associated product. Do not provide for `orders.createtestorder`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lineItemId => String.t(),
          :offerId => String.t(),
          :productId => String.t(),
          :quantity => integer()
        }

  field(:lineItemId)
  field(:offerId)
  field(:productId)
  field(:quantity)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderPromotionItem do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderPromotionItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderPromotionItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

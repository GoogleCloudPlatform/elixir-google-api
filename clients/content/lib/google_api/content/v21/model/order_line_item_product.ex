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

defmodule GoogleApi.Content.V21.Model.OrderLineItemProduct do
  @moduledoc """


  ## Attributes

  *   `brand` (*type:* `String.t`, *default:* `nil`) - Brand of the item.
  *   `condition` (*type:* `String.t`, *default:* `nil`) - Condition or state of the item.
  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - The two-letter ISO 639-1 language code for the item.
  *   `fees` (*type:* `list(GoogleApi.Content.V21.Model.OrderLineItemProductFee.t)`, *default:* `nil`) - Associated fees at order creation time.
  *   `gtin` (*type:* `String.t`, *default:* `nil`) - Global Trade Item Number (GTIN) of the item.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The REST ID of the product.
  *   `imageLink` (*type:* `String.t`, *default:* `nil`) - URL of an image of the item.
  *   `itemGroupId` (*type:* `String.t`, *default:* `nil`) - Shared identifier for all variants of the same product.
  *   `mpn` (*type:* `String.t`, *default:* `nil`) - Manufacturer Part Number (MPN) of the item.
  *   `offerId` (*type:* `String.t`, *default:* `nil`) - An identifier of the item.
  *   `price` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - Price of the item.
  *   `shownImage` (*type:* `String.t`, *default:* `nil`) - URL to the cached image shown to the user when order was placed.
  *   `targetCountry` (*type:* `String.t`, *default:* `nil`) - The CLDR territory code of the target country of the product.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the product.
  *   `variantAttributes` (*type:* `list(GoogleApi.Content.V21.Model.OrderLineItemProductVariantAttribute.t)`, *default:* `nil`) - Variant attributes for the item. These are dimensions of the product, such as color, gender, material, pattern, and size. You can find a comprehensive list of variant attributes here.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :brand => String.t(),
          :condition => String.t(),
          :contentLanguage => String.t(),
          :fees => list(GoogleApi.Content.V21.Model.OrderLineItemProductFee.t()),
          :gtin => String.t(),
          :id => String.t(),
          :imageLink => String.t(),
          :itemGroupId => String.t(),
          :mpn => String.t(),
          :offerId => String.t(),
          :price => GoogleApi.Content.V21.Model.Price.t(),
          :shownImage => String.t(),
          :targetCountry => String.t(),
          :title => String.t(),
          :variantAttributes =>
            list(GoogleApi.Content.V21.Model.OrderLineItemProductVariantAttribute.t())
        }

  field(:brand)
  field(:condition)
  field(:contentLanguage)
  field(:fees, as: GoogleApi.Content.V21.Model.OrderLineItemProductFee, type: :list)
  field(:gtin)
  field(:id)
  field(:imageLink)
  field(:itemGroupId)
  field(:mpn)
  field(:offerId)
  field(:price, as: GoogleApi.Content.V21.Model.Price)
  field(:shownImage)
  field(:targetCountry)
  field(:title)

  field(:variantAttributes,
    as: GoogleApi.Content.V21.Model.OrderLineItemProductVariantAttribute,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderLineItemProduct do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderLineItemProduct.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderLineItemProduct do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

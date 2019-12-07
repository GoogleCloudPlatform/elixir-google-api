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

defmodule GoogleApi.Content.V2.Model.Product do
  @moduledoc """
  Product data. After inserting, updating, or deleting a product, it may take several minutes before changes take effect.

  ## Attributes

  *   `source` (*type:* `String.t`, *default:* `nil`) - The source of the offer, i.e., how the offer was created.
  *   `targetCountry` (*type:* `String.t`, *default:* `nil`) - The CLDR territory code for the item.
  *   `promotionIds` (*type:* `list(String.t)`, *default:* `nil`) - The unique ID of a promotion.
  *   `energyEfficiencyClass` (*type:* `String.t`, *default:* `nil`) - The energy efficiency class as defined in EU directive 2010/30/EU.
  *   `customLabel3` (*type:* `String.t`, *default:* `nil`) - Custom label 3 for custom grouping of items in a Shopping campaign.
  *   `maxEnergyEfficiencyClass` (*type:* `String.t`, *default:* `nil`) - The energy efficiency class as defined in EU directive 2010/30/EU.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of the item.
  *   `availabilityDate` (*type:* `String.t`, *default:* `nil`) - The day a pre-ordered product becomes available for delivery, in ISO 8601 format.
  *   `availability` (*type:* `String.t`, *default:* `nil`) - Availability status of the item.
  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - The two-letter ISO 639-1 language code for the item.
  *   `sellOnGoogleQuantity` (*type:* `String.t`, *default:* `nil`) - The quantity of the product that is available for selling on Google. Supported only for online products.
  *   `customLabel2` (*type:* `String.t`, *default:* `nil`) - Custom label 2 for custom grouping of items in a Shopping campaign.
  *   `displayAdsSimilarIds` (*type:* `list(String.t)`, *default:* `nil`) - Advertiser-specified recommendations.
  *   `shippingWeight` (*type:* `GoogleApi.Content.V2.Model.ProductShippingWeight.t`, *default:* `nil`) - Weight of the item for shipping.
  *   `shippingLength` (*type:* `GoogleApi.Content.V2.Model.ProductShippingDimension.t`, *default:* `nil`) - Length of the item for shipping.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The REST ID of the product. Content API methods that operate on products take this as their productId parameter.
      The REST ID for a product is of the form channel:contentLanguage:targetCountry:offerId.
  *   `customLabel0` (*type:* `String.t`, *default:* `nil`) - Custom label 0 for custom grouping of items in a Shopping campaign.
  *   `ageGroup` (*type:* `String.t`, *default:* `nil`) - Target age group of the item.
  *   `imageLink` (*type:* `String.t`, *default:* `nil`) - URL of an image of the item.
  *   `warnings` (*type:* `list(GoogleApi.Content.V2.Model.Error.t)`, *default:* `nil`) - Read-only warnings.
  *   `minEnergyEfficiencyClass` (*type:* `String.t`, *default:* `nil`) - The energy efficiency class as defined in EU directive 2010/30/EU.
  *   `price` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - Price of the item.
  *   `channel` (*type:* `String.t`, *default:* `nil`) - The item's channel (online or local).
  *   `minHandlingTime` (*type:* `String.t`, *default:* `nil`) - Minimal product handling time (in business days).
  *   `customLabel4` (*type:* `String.t`, *default:* `nil`) - Custom label 4 for custom grouping of items in a Shopping campaign.
  *   `brand` (*type:* `String.t`, *default:* `nil`) - Brand of the item.
  *   `salePriceEffectiveDate` (*type:* `String.t`, *default:* `nil`) - Date range during which the item is on sale (see products data specification).
  *   `expirationDate` (*type:* `String.t`, *default:* `nil`) - Date on which the item should expire, as specified upon insertion, in ISO 8601 format. The actual expiration date in Google Shopping is exposed in productstatuses as googleExpirationDate and might be earlier if expirationDate is too far in the future.
  *   `condition` (*type:* `String.t`, *default:* `nil`) - Condition or state of the item.
  *   `material` (*type:* `String.t`, *default:* `nil`) - The material of which the item is made.
  *   `googleProductCategory` (*type:* `String.t`, *default:* `nil`) - Google's category of the item (see Google product taxonomy).
  *   `isBundle` (*type:* `boolean()`, *default:* `nil`) - Whether the item is a merchant-defined bundle. A bundle is a custom grouping of different products sold by a merchant for a single price.
  *   `mobileLink` (*type:* `String.t`, *default:* `nil`) - Link to a mobile-optimized version of the landing page.
  *   `sizeType` (*type:* `String.t`, *default:* `nil`) - The cut of the item. Recommended for apparel items.
  *   `additionalImageLinks` (*type:* `list(String.t)`, *default:* `nil`) - Additional URLs of images of the item.
  *   `shipping` (*type:* `list(GoogleApi.Content.V2.Model.ProductShipping.t)`, *default:* `nil`) - Shipping rules.
  *   `validatedDestinations` (*type:* `list(String.t)`, *default:* `nil`) - Deprecated. The read-only list of intended destinations which passed validation.
  *   `destinations` (*type:* `list(GoogleApi.Content.V2.Model.ProductDestination.t)`, *default:* `nil`) - Specifies the intended destinations for the product.
  *   `costOfGoodsSold` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - Cost of goods sold. Used for gross profit reporting.
  *   `additionalProductTypes` (*type:* `list(String.t)`, *default:* `nil`) - Additional categories of the item (formatted as in products data specification).
  *   `installment` (*type:* `GoogleApi.Content.V2.Model.Installment.t`, *default:* `nil`) - Number and amount of installments to pay for an item. Brazil only.
  *   `onlineOnly` (*type:* `boolean()`, *default:* `nil`) - Deprecated. Whether an item is available for purchase only online.
  *   `multipack` (*type:* `String.t`, *default:* `nil`) - The number of identical products in a merchant-defined multipack.
  *   `salePrice` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - Advertised sale price of the item.
  *   `sizeSystem` (*type:* `String.t`, *default:* `nil`) - System in which the size is specified. Recommended for apparel items.
  *   `shippingLabel` (*type:* `String.t`, *default:* `nil`) - The shipping label of the product, used to group product in account-level shipping rules.
  *   `displayAdsValue` (*type:* `float()`, *default:* `nil`) - Offer margin for dynamic remarketing campaigns.
  *   `kind` (*type:* `String.t`, *default:* `content#product`) - Identifies what kind of resource this is. Value: the fixed string "content#product".
  *   `loyaltyPoints` (*type:* `GoogleApi.Content.V2.Model.LoyaltyPoints.t`, *default:* `nil`) - Loyalty points that users receive after purchasing the item. Japan only.
  *   `displayAdsLink` (*type:* `String.t`, *default:* `nil`) - URL directly to your item's landing page for dynamic remarketing campaigns.
  *   `displayAdsId` (*type:* `String.t`, *default:* `nil`) - An identifier for an item for dynamic remarketing campaigns.
  *   `customGroups` (*type:* `list(GoogleApi.Content.V2.Model.CustomGroup.t)`, *default:* `nil`) - A list of custom (merchant-provided) custom attribute groups.
  *   `gtin` (*type:* `String.t`, *default:* `nil`) - Global Trade Item Number (GTIN) of the item.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the item.
  *   `shippingWidth` (*type:* `GoogleApi.Content.V2.Model.ProductShippingDimension.t`, *default:* `nil`) - Width of the item for shipping.
  *   `displayAdsTitle` (*type:* `String.t`, *default:* `nil`) - Title of an item for dynamic remarketing campaigns.
  *   `unitPricingMeasure` (*type:* `GoogleApi.Content.V2.Model.ProductUnitPricingMeasure.t`, *default:* `nil`) - The measure and dimension of an item.
  *   `gender` (*type:* `String.t`, *default:* `nil`) - Target gender of the item.
  *   `customAttributes` (*type:* `list(GoogleApi.Content.V2.Model.CustomAttribute.t)`, *default:* `nil`) - A list of custom (merchant-provided) attributes. It can also be used for submitting any attribute of the feed specification in its generic form (e.g., { "name": "size type", "value": "regular" }). This is useful for submitting attributes not explicitly exposed by the API, such as additional attributes used for Shopping Actions.
  *   `taxes` (*type:* `list(GoogleApi.Content.V2.Model.ProductTax.t)`, *default:* `nil`) - Tax information.
  *   `adwordsRedirect` (*type:* `String.t`, *default:* `nil`) - Allows advertisers to override the item URL when the product is shown within the context of Product Ads.
  *   `shippingHeight` (*type:* `GoogleApi.Content.V2.Model.ProductShippingDimension.t`, *default:* `nil`) - Height of the item for shipping.
  *   `mpn` (*type:* `String.t`, *default:* `nil`) - Manufacturer Part Number (MPN) of the item.
  *   `pattern` (*type:* `String.t`, *default:* `nil`) - The item's pattern (e.g. polka dots).
  *   `customLabel1` (*type:* `String.t`, *default:* `nil`) - Custom label 1 for custom grouping of items in a Shopping campaign.
  *   `adwordsGrouping` (*type:* `String.t`, *default:* `nil`) - Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise.
  *   `aspects` (*type:* `list(GoogleApi.Content.V2.Model.ProductAspect.t)`, *default:* `nil`) - Deprecated. Do not use.
  *   `offerId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for the item. Leading and trailing whitespaces are stripped and multiple whitespaces are replaced by a single whitespace upon submission. Only valid unicode characters are accepted. See the products feed specification for details.
      Note: Content API methods that operate on products take the REST ID of the product, not this identifier.
  *   `maxHandlingTime` (*type:* `String.t`, *default:* `nil`) - Maximal product handling time (in business days).
  *   `itemGroupId` (*type:* `String.t`, *default:* `nil`) - Shared identifier for all variants of the same product.
  *   `color` (*type:* `String.t`, *default:* `nil`) - Color of the item.
  *   `link` (*type:* `String.t`, *default:* `nil`) - URL directly linking to your item's page on your website.
  *   `adwordsLabels` (*type:* `list(String.t)`, *default:* `nil`) - Similar to adwords_grouping, but only works on CPC.
  *   `productType` (*type:* `String.t`, *default:* `nil`) - Your category of the item (formatted as in products data specification).
  *   `unitPricingBaseMeasure` (*type:* `GoogleApi.Content.V2.Model.ProductUnitPricingBaseMeasure.t`, *default:* `nil`) - The preference of the denominator of the unit price.
  *   `adult` (*type:* `boolean()`, *default:* `nil`) - Set to true if the item is targeted towards adults.
  *   `identifierExists` (*type:* `boolean()`, *default:* `nil`) - False when the item does not have unique product identifiers appropriate to its category, such as GTIN, MPN, and brand. Required according to the Unique Product Identifier Rules for all target countries except for Canada.
  *   `sizes` (*type:* `list(String.t)`, *default:* `nil`) - Size of the item. Only one value is allowed. For variants with different sizes, insert a separate product for each size with the same itemGroupId value (see size definition).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :source => String.t(),
          :targetCountry => String.t(),
          :promotionIds => list(String.t()),
          :energyEfficiencyClass => String.t(),
          :customLabel3 => String.t(),
          :maxEnergyEfficiencyClass => String.t(),
          :title => String.t(),
          :availabilityDate => String.t(),
          :availability => String.t(),
          :contentLanguage => String.t(),
          :sellOnGoogleQuantity => String.t(),
          :customLabel2 => String.t(),
          :displayAdsSimilarIds => list(String.t()),
          :shippingWeight => GoogleApi.Content.V2.Model.ProductShippingWeight.t(),
          :shippingLength => GoogleApi.Content.V2.Model.ProductShippingDimension.t(),
          :id => String.t(),
          :customLabel0 => String.t(),
          :ageGroup => String.t(),
          :imageLink => String.t(),
          :warnings => list(GoogleApi.Content.V2.Model.Error.t()),
          :minEnergyEfficiencyClass => String.t(),
          :price => GoogleApi.Content.V2.Model.Price.t(),
          :channel => String.t(),
          :minHandlingTime => String.t(),
          :customLabel4 => String.t(),
          :brand => String.t(),
          :salePriceEffectiveDate => String.t(),
          :expirationDate => String.t(),
          :condition => String.t(),
          :material => String.t(),
          :googleProductCategory => String.t(),
          :isBundle => boolean(),
          :mobileLink => String.t(),
          :sizeType => String.t(),
          :additionalImageLinks => list(String.t()),
          :shipping => list(GoogleApi.Content.V2.Model.ProductShipping.t()),
          :validatedDestinations => list(String.t()),
          :destinations => list(GoogleApi.Content.V2.Model.ProductDestination.t()),
          :costOfGoodsSold => GoogleApi.Content.V2.Model.Price.t(),
          :additionalProductTypes => list(String.t()),
          :installment => GoogleApi.Content.V2.Model.Installment.t(),
          :onlineOnly => boolean(),
          :multipack => String.t(),
          :salePrice => GoogleApi.Content.V2.Model.Price.t(),
          :sizeSystem => String.t(),
          :shippingLabel => String.t(),
          :displayAdsValue => float(),
          :kind => String.t(),
          :loyaltyPoints => GoogleApi.Content.V2.Model.LoyaltyPoints.t(),
          :displayAdsLink => String.t(),
          :displayAdsId => String.t(),
          :customGroups => list(GoogleApi.Content.V2.Model.CustomGroup.t()),
          :gtin => String.t(),
          :description => String.t(),
          :shippingWidth => GoogleApi.Content.V2.Model.ProductShippingDimension.t(),
          :displayAdsTitle => String.t(),
          :unitPricingMeasure => GoogleApi.Content.V2.Model.ProductUnitPricingMeasure.t(),
          :gender => String.t(),
          :customAttributes => list(GoogleApi.Content.V2.Model.CustomAttribute.t()),
          :taxes => list(GoogleApi.Content.V2.Model.ProductTax.t()),
          :adwordsRedirect => String.t(),
          :shippingHeight => GoogleApi.Content.V2.Model.ProductShippingDimension.t(),
          :mpn => String.t(),
          :pattern => String.t(),
          :customLabel1 => String.t(),
          :adwordsGrouping => String.t(),
          :aspects => list(GoogleApi.Content.V2.Model.ProductAspect.t()),
          :offerId => String.t(),
          :maxHandlingTime => String.t(),
          :itemGroupId => String.t(),
          :color => String.t(),
          :link => String.t(),
          :adwordsLabels => list(String.t()),
          :productType => String.t(),
          :unitPricingBaseMeasure => GoogleApi.Content.V2.Model.ProductUnitPricingBaseMeasure.t(),
          :adult => boolean(),
          :identifierExists => boolean(),
          :sizes => list(String.t())
        }

  field(:source)
  field(:targetCountry)
  field(:promotionIds, type: :list)
  field(:energyEfficiencyClass)
  field(:customLabel3)
  field(:maxEnergyEfficiencyClass)
  field(:title)
  field(:availabilityDate)
  field(:availability)
  field(:contentLanguage)
  field(:sellOnGoogleQuantity)
  field(:customLabel2)
  field(:displayAdsSimilarIds, type: :list)
  field(:shippingWeight, as: GoogleApi.Content.V2.Model.ProductShippingWeight)
  field(:shippingLength, as: GoogleApi.Content.V2.Model.ProductShippingDimension)
  field(:id)
  field(:customLabel0)
  field(:ageGroup)
  field(:imageLink)
  field(:warnings, as: GoogleApi.Content.V2.Model.Error, type: :list)
  field(:minEnergyEfficiencyClass)
  field(:price, as: GoogleApi.Content.V2.Model.Price)
  field(:channel)
  field(:minHandlingTime)
  field(:customLabel4)
  field(:brand)
  field(:salePriceEffectiveDate)
  field(:expirationDate)
  field(:condition)
  field(:material)
  field(:googleProductCategory)
  field(:isBundle)
  field(:mobileLink)
  field(:sizeType)
  field(:additionalImageLinks, type: :list)
  field(:shipping, as: GoogleApi.Content.V2.Model.ProductShipping, type: :list)
  field(:validatedDestinations, type: :list)
  field(:destinations, as: GoogleApi.Content.V2.Model.ProductDestination, type: :list)
  field(:costOfGoodsSold, as: GoogleApi.Content.V2.Model.Price)
  field(:additionalProductTypes, type: :list)
  field(:installment, as: GoogleApi.Content.V2.Model.Installment)
  field(:onlineOnly)
  field(:multipack)
  field(:salePrice, as: GoogleApi.Content.V2.Model.Price)
  field(:sizeSystem)
  field(:shippingLabel)
  field(:displayAdsValue)
  field(:kind)
  field(:loyaltyPoints, as: GoogleApi.Content.V2.Model.LoyaltyPoints)
  field(:displayAdsLink)
  field(:displayAdsId)
  field(:customGroups, as: GoogleApi.Content.V2.Model.CustomGroup, type: :list)
  field(:gtin)
  field(:description)
  field(:shippingWidth, as: GoogleApi.Content.V2.Model.ProductShippingDimension)
  field(:displayAdsTitle)
  field(:unitPricingMeasure, as: GoogleApi.Content.V2.Model.ProductUnitPricingMeasure)
  field(:gender)
  field(:customAttributes, as: GoogleApi.Content.V2.Model.CustomAttribute, type: :list)
  field(:taxes, as: GoogleApi.Content.V2.Model.ProductTax, type: :list)
  field(:adwordsRedirect)
  field(:shippingHeight, as: GoogleApi.Content.V2.Model.ProductShippingDimension)
  field(:mpn)
  field(:pattern)
  field(:customLabel1)
  field(:adwordsGrouping)
  field(:aspects, as: GoogleApi.Content.V2.Model.ProductAspect, type: :list)
  field(:offerId)
  field(:maxHandlingTime)
  field(:itemGroupId)
  field(:color)
  field(:link)
  field(:adwordsLabels, type: :list)
  field(:productType)
  field(:unitPricingBaseMeasure, as: GoogleApi.Content.V2.Model.ProductUnitPricingBaseMeasure)
  field(:adult)
  field(:identifierExists)
  field(:sizes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Product do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.Product.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
